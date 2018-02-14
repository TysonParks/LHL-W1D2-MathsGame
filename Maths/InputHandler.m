//
//  InputHandler.m
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

// Instance methods
-(NSString *)returnUserInputAsString {
    // Get input from user
    char inputInt[255];
    fgets(inputInt, 255, stdin);
    
    // Parse input from user
    NSString *inputString = [NSString stringWithCString:inputInt encoding:NSUTF8StringEncoding];
    NSCharacterSet *whiteSpaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    inputString = [inputString stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
    
    return inputString;
}

@end
