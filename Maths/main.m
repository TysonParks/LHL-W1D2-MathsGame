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
        
        // Bool to run or end game
        BOOL gameOn = YES;
        
        // infinite while loop
        while (gameOn) {
            
            // Initialize instance of AdditionQuestion
            AdditionQuestion *firstQuestion = [[AdditionQuestion alloc]init];
            
            // Log question from AdditionQuestion
            NSLog(@"%@\n", firstQuestion.question);
            
            // Initialize an InputHandler and use it to get user's input
            InputHandler *getUsersAnswer = [[InputHandler alloc]init];
            NSString *userAnswer = [getUsersAnswer returnUserInputAsString];
            
            // Log user's output
            NSLog(@"You entered %@", userAnswer);
            
            //Check if user's answer is correct?
            BOOL correctAnswer;
            // End game if user types 'quit'
            if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            // Print Right! for correct answer
            } else if ([userAnswer isEqualToString:firstQuestion.answer]) {
                correctAnswer = YES;
                NSLog(@"Right!");
            //Print Wrong! for incorrect answer and give correct answer
            } else {
                correctAnswer = NO;
                NSLog(@"Wrong!");
                NSLog(@"The correct answer is %@", firstQuestion.answer);
            }
            
            
            
            
        }
        
        
    }
    return 0;
}
