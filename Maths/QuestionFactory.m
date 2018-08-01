//
//  QuestionFactory.m
//  Maths
//
//  Created by Bennett on 2018-08-01.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(id)generateRandomQuestion{
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    
    NSInteger selectionNumber = arc4random_uniform(4);
    NSString *className = questionSubclassNames[selectionNumber];
    
    return [[NSClassFromString(className) alloc]init];
}
@end
