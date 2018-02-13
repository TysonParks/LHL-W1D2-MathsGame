//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

// override init
-(instancetype)init {
    if (self = [super init]) {
        // create two random ints
        int firstRandomNumber = arc4random_uniform(500);
        int secondRandomNumber = arc4random_uniform(500);
        
        // create question string with random numbers
        NSString *randomAdditionQuestion = [NSString stringWithFormat:@"What is %i + %i?", firstRandomNumber, secondRandomNumber];
        NSLog(@"%@", randomAdditionQuestion);
        
        randomAdditionQuestion = _question;
    }
    return self;
}


@end
