//
//  ILTask.h
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject
@property (nonatomic, retain) NSString *description;
@property (nonatomic, assign, getter = isDone) BOOL done;
-(instancetype)initWithDescription:(NSString* )description;
@end
