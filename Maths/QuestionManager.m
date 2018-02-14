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
    NSTimeInterval oldTotalTime = 0;
    int totalQuestionsAsked = 0;
    
    // Addition loop for adding up answer times
    for (AdditionQuestion *currentQuestion in self.questions) {
        NSTimeInterval newTotalTime = oldTotalTime + currentQuestion.answerTime;
        newTotalTime = oldTotalTime;
        totalQuestionsAsked++;  //increment question count
    }
    // Final variables from which to form string
    NSTimeInterval totalTime = oldTotalTime;
    NSTimeInterval averageTime = totalTime / totalQuestionsAsked;
    
    // Convert NSTimeInterval values to NSStrings
    //NSString *totalTimeString = [[NSDateComponentsFormatter new]stringFromTimeInterval:totalTime];
   // NSString *averageTimeString = [[NSDateComponentsFormatter new]stringFromTimeInterval:averageTime];
    
    //Construct final string
    NSString *timeOutput = [NSString stringWithFormat:@"total time: %.2f average time: %.2f",totalTime, averageTime];
    
//    (@"total time: %@ average time: %@", totalTimeString, averageTimeString)
    return timeOutput;
}


@end
