//
//  AdditionQuestion.h
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSInteger number1;
@property NSInteger number2;
@property (nonatomic) NSInteger answer;
@property NSString *question;
@property NSDate *startTime;
@property NSDate *endTime;

-(NSTimeInterval)answerTime;
@end
