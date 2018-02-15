//
//  DivisionQuestion.m
//  Maths
//
//  Created by Tyson Parks on 2/14/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    // create question string with random numbers and addition and log it
    NSString *randomAdditionQuestion = [NSString stringWithFormat:@"%i / %i ?", self.rightValue, self.leftValue];
    self.question = randomAdditionQuestion;
    
    // calculate answer and log
    int answer = self.rightValue / self.leftValue;
    NSString *answerToQuestion = [NSString stringWithFormat:@"%i", answer];
    self.answer = answerToQuestion;
}

@end
