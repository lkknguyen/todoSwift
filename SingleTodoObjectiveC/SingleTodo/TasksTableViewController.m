//
//  ILTodoTableViewController.m
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import "TasksTableViewController.h"
#import "Task.h"
#import "AddTaskViewController.h"

@interface TasksTableViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic,strong) NSMutableArray *tasks;
@property (nonatomic,weak) IBOutlet UITableView *tasksTableView;
@end

@implementation TasksTableViewController
@synthesize tasksTableView = _tasksTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tasks = [[NSMutableArray alloc] initWithArray:@[]];
    self.tasksTableView = self.tableView;
    UIBarButtonItem *addTask = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(showAddTaskViewController)];
    self.navigationItem.rightBarButtonItem = addTask;
    [self loadTasks];
}

- (void)showAddTaskViewController
{
    AddTaskViewController *newTaskVC = [[AddTaskViewController alloc] init];
    newTaskVC.tasksViewController = self;
    [self.navigationController pushViewController:newTaskVC animated:YES];
}

- (void) loadTasks
{
    Task *firstTask = [[Task alloc] initWithDescription:@"Go buy milk"];
    Task *secondTask = [[Task alloc] initWithDescription:@"Learn swift programming"];
    [self.tasks addObject:firstTask];
    [self.tasks addObject:secondTask];
    [self.tasksTableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    Task *task = self.tasks[indexPath.row];
    cell.textLabel.text = task.description;
    if (task.isDone)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tasksTableView deselectRowAtIndexPath:indexPath animated:NO];
    Task *task = [self.tasks objectAtIndex:indexPath.row];
    task.done = !task.isDone;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}

- (void)AddTask:(Task *)task
{
    [self.tasks addObject:task];
    [self.tasksTableView reloadData];
}

@end
