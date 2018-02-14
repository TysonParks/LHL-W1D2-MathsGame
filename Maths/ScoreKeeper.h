//
//  ScoreKeeper.h
//  Maths
//
//  Created by Tyson Parks on 2/13/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

//properties
@property int rightCount;
@property int wrongCount;

//methods
-(NSString *) percentageRight;

@end
