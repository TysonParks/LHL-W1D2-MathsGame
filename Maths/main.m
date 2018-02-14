//
//  main.m
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        // infinite while loop
        while (gameOn) {
            
            // Initialize instance of AdditionQuestion
            AdditionQuestion *firstQuestion = [[AdditionQuestion alloc]init];
            
            // Log question from AdditionQuestion
            NSLog(@"%@\n", firstQuestion.question);
            
//            // Get input from user
//            char inputInt[255];
//            fgets(inputInt, 255, stdin);
//
//            // Parse input from user
//            NSString *inputString = [NSString stringWithCString:inputInt encoding:NSUTF8StringEncoding];
//            NSCharacterSet *whiteSpaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//            inputString = [inputString stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
            
            InputHandler *getUsersAnswer = [[InputHandler alloc]init];
            NSString *userAnswer = [getUsersAnswer returnUserInputAsString];
            
            NSLog(@"You entered %@", userAnswer);
            
            //Check if user's answer is correct?
            BOOL correctAnswer;
            
            if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            } else if ([userAnswer isEqualToString:firstQuestion.answer]) {
                correctAnswer = YES;
                NSLog(@"Right!");
            } else {
                correctAnswer = NO;
                NSLog(@"Wrong!");
            }
            NSLog(@"The correct answer is %@", firstQuestion.answer);
            
            
        }
        
        
    }
    return 0;
}
