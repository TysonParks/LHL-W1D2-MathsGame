//
//  QuestionManager.h
//  Maths
//
//  Created by Tyson Parks on 2/14/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

// Properties
@property (strong, nonatomic) NSMutableArray *questions;
@property (nonatomic) float totalTime;
@property (nonatomic) float averageTime;


// Methods
- (NSString *) timeOutput;

@end
