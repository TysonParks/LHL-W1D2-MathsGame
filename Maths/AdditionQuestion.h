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
@property NSString *question;
@property NSString *answer;

// Time properties
@property NSDate *startTime;
@property NSDate *endTime;

@end
