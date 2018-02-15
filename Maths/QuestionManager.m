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

// Methods
-(NSString *)timeOutput {
    
    // Initialize variables for incrementing addition loop and count
    float oldTotalTime = [self.questions[0] answerTime];
    NSUInteger totalQuestionsAsked = [self.questions count];
    
    // Addition loop for adding up answer times
    for (Question *currentQuestion in self.questions) {
        float newTotalTime = oldTotalTime + [currentQuestion answerTime];
        oldTotalTime = newTotalTime;
       
        
    }
    // Final variables from which to form string
    self.totalTime = oldTotalTime;
    self.averageTime = self.totalTime / (float)totalQuestionsAsked;
    
    // Construct final string
    NSString *timeOutput = [NSString stringWithFormat:@"total time: %.2f average time: %.2f", self.totalTime, self.averageTime];
    
//    (@"total time: %@ average time: %@", totalTimeString, averageTimeString)
    return timeOutput;
}


@end
