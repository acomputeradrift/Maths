//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Bennett on 2018-08-01.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}
- (void)generateQuestion{
    super.question = [NSString stringWithFormat:@"What is %lu - %lu ?", super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
}
@end
