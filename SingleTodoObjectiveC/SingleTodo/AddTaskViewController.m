//
//  ILNewTaskViewController.m
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import "AddTaskViewController.h"
#import "TasksTableViewController.h"
#import "Task.h"


@interface AddTaskViewController ()
@property (nonatomic,weak) IBOutlet UITextField *descriptionTextField;

@end

@implementation AddTaskViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)addTaskButtonPressed:(id)sender
{
    Task *task = [[Task alloc] init];
    task.description = self.descriptionTextField.text;
    task.done = NO;
    [self.tasksViewController AddTask:task];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
