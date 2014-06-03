//
//  ILTodoTableViewController.h
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ILTask.h"

@interface ILTodoTableViewController : UITableViewController

- (void) AddTask:(ILTask *)task;

@end
