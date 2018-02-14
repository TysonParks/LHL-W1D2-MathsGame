//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

// Question properties
@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;

// Time properties
@property (strong, nonatomic) NSDate *startTime;
@property (strong, nonatomic) NSDate *endTime;
@property (nonatomic) NSTimeInterval answerTime;

@end
