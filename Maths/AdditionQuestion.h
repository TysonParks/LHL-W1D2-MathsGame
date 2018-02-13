//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property currentScore;


-(void) askRandomAdditionQuestion;
-(void) answerRandomAdditionQuestion;
-(void) exitGame;


@end