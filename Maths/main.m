//
//  main.m
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // infinite while loop
        while (true) {
            
            // Initialize instance of AdditionQuestion
            AdditionQuestion *firstQuestion = [[AdditionQuestion alloc]init];
            
            // Log question from AdditionQuestion
            NSLog(@"%@\n", firstQuestion.question);
            
            // Get input from user
            char inputInt[255];
            fgets(inputInt, 255, stdin);
            
            // Parse input from user
            NSString *inputString = [NSString stringWithCString:inputInt encoding:NSUTF8StringEncoding];
            NSCharacterSet *whiteSpaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            inputString = [inputString stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
            
            //Check if user's answer is correct?
            BOOL correctAnswer;
            if ([inputString isEqualToString:firstQuestion.answer]) {
                correctAnswer = YES;
                NSLog(@"Right!");
            } else {
                correctAnswer = NO;
                NSLog(@"Wrong!");
            }
            
            
            NSLog(@"You entered the string %s.", inputInt);
            NSLog(@"It has been converted and trimmed to %@", inputString);
            
            
        }
        
        
    }
    return 0;
}
