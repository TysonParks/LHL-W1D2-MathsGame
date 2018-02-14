//
//  ScoreKeeper.m
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)findPercentageRight {
    
    float percentage = ((float)_rightCount / ((float)_rightCount + (float)_wrongCount)) * 100;
    NSString *percentageRight = [NSString stringWithFormat:@"%.0f %", percentage];
    
    return percentageRight;
}

@end
