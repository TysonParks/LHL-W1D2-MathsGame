//
//  QuestionManager.m
//  Maths
//
//  Created by Tyson Parks on 2/14/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc]init];
    }
    return self;
}

@end
