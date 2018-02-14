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

@property (strong, nonatomic) NSMutableArray *questions;


- (NSString *) timeOutput;

@end
