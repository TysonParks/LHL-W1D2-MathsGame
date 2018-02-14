//
//  QuestionManager.m
//  Maths
//
//  Created by Tyson Parks on 2/14/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

// Override init method to initialize questions array
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc]init];
    }
    return self;
}

// Properties
-(NSString *)timeOutput {
    self.timeOutput = @"total time: 60s, average time: 10s";
    return self.timeOutput;
}


@end
