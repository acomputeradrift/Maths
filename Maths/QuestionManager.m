//
//  QuestionManager.m
//  Maths
//
//  Created by Bennett on 2018-08-01.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
        
    }
    return self;
}

- (NSString *)timeOutput
{
    NSTimeInterval totalTime = 0;
    for (int i=0; i< [self.questions count]; i++) {
        Question * question = [self.questions objectAtIndex:i];
        totalTime += [question answerTime];
    }
    NSTimeInterval averageTime = totalTime /[self.questions count];
    return [NSString stringWithFormat:@"total time: %fs, average time: %fs", totalTime, averageTime];
}
@end
