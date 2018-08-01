//
//  AdditionQuestion.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        _startTime = [NSDate date];
        _number1 = arc4random_uniform(90) + 10;
        _number2 = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"What is %lu + %lu ?", _number1, _number2];
        _answer = _number1 + _number2;
    }
    return self;
}


- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    
    return [self.endTime timeIntervalSinceDate:self.startTime];
}
@end
