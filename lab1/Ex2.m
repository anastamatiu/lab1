//
//  Ex2.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex2.h"

@implementation Ex2

-(NSUInteger)cumputeFibbonaci:(NSUInteger)number
{
    NSUInteger first = 1;
    NSUInteger second = 1;
    NSUInteger final = 2;
    
    NSUInteger current_number = 2;
    
    while(current_number < number)
    {
        final = first + second;
        first = second;
        second = final;
        current_number++;
    }
    
//    NSLog(@"%d", final);
    return final;
}

-(double)average:(NSArray *)array
{
    int sum = 0;
    double average = 0;
    int numberOfElements = [array count];
    
    for(int i = 0;i < numberOfElements;i++)
    {
        sum = sum + [[array objectAtIndex:i] intValue];
    }
    
    average = sum/numberOfElements;
    
    return average;
}

-(NSString *)keyBigestAverageArray:(NSDictionary *)dictionary
{
    int max = 0;
    
    for (NSString *key in [dictionary allKeys])
    {
        NSArray *array = [NSArray new];
        
        NSUInteger numberOfElements = [array count];
    
        
    }
    
    return nil;
}

-(NSArray *)findClosestPointInArray:(NSArray *)points fromPoint:(NSArray *)origin
{
    //ex2
    return nil;
}

-(NSString *)findDateAfter:(NSInteger)numberOfDays from:(NSDate *)fromDate
{
    //ex2
    return nil;
}

-(BOOL)checkLeapYear:(NSString *)string
{
    //ex2
    return NO;
}

-(BOOL)checkPrimeNumber:(NSUInteger)number
{
    //ex2
    return NO;
}

@end