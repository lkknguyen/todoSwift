//
//  ILTask.m
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 icalialabs. All rights reserved.
//

#import "Task.h"

@implementation Task : NSObject

@synthesize description = _description;

-(instancetype)initWithDescription:(NSString *)description
{
    self = [super init];
    if (!self)
    {
        return nil;
    }
    self.description = description;
    return self;
}

@end
