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
            
            AdditionQuestion *firstQuestion = [[AdditionQuestion alloc]init];
            
            char inputNumber[255];
            
            printf("Input a number 1-6: ");
            
            fgets(inputNumber, 255, stdin);
            
            char inputChars[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSCharacterSet *whiteSpaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            
            inputString = [inputString stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
            NSLog(@"You entered the string %s.", inputChars);
            NSLog(@"It has been converted and trimmed to %@", inputString);
            
            
        }
        
        
    }
    return 0;
}
