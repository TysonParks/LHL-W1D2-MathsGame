//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "Question.h"

@implementation Question

// override init
-(instancetype)init {
    if (self = [super init]) {
        // Start timer
        self.startTime = [NSDate date];
        
        
        // create two random number ints for math question
        int firstRandomNumber = arc4random_uniform(10);
        int secondRandomNumber = arc4random_uniform(10);
        
        // create question string with random numbers and addition and log it
        NSString *randomAdditionQuestion = [NSString stringWithFormat:@"%i + %i ?", firstRandomNumber, secondRandomNumber];
//        NSLog(@"%@", randomAdditionQuestion);
        
        self.question = randomAdditionQuestion;
        
        // calculate answer and log
        int answer = firstRandomNumber + secondRandomNumber;
        NSString *answerToQuestion = [NSString stringWithFormat:@"%i", answer];
//        NSLog(@"%@", answerToQuestion);
        
        self.answer = answerToQuestion;
        
        
    }
    return self;
}

- (NSString *)answer {
    _endTime = [NSDate date];
//    NSDate *referenceStartTime = _startTime;
//    NSDate * referenceEndTime = _endTime;
//    NSTimeInterval answerTimeInSeconds = [referenceStartTime timeIntervalSinceDate:referenceEndTime];
    _answerTime = [_endTime timeIntervalSinceDate:_startTime];
    return _answer;
}


@end
