//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

//initializers
-(instancetype)init;

//properties
@property currentScore;

//methods
-(void) askRandomAdditionQuestion;
-(void) answerRandomAdditionQuestion;
-(void) exitGame;


@end
