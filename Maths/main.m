//
//  main.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        NSString *result;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        QuestionManager *manager = [[QuestionManager alloc]init];
        
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while(YES)
        {
            Question *question = [questionFactory generateRandomQuestion];
            [manager.questions addObject:question];
            
            NSLog(@"%@", [question question]);
            
            InputHandler *input = [[InputHandler alloc]init];
            result = [input getInput];

            
            //in case the user exit
            if ([result isEqualToString:@"quit"])
            {
                break;
            }
            
//            NSLog(@"Input string %@", result);
            NSInteger userAnswer = [result integerValue];
            
            if (userAnswer == [question answer])
            {
                scoreKeeper.rightAnswer++;
                NSLog(@"Right!");
            }
            else
            {
                scoreKeeper.wrongAnswer++;
                NSLog(@"Wrong!");

            }
            
            [scoreKeeper printScore];
            NSLog(@"%@", [manager timeOutput]);

        }

        
    }
    return 0;
}
