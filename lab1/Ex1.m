//
//  Exercices.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex1.h"


@implementation Ex1
-(NSArray *)cappitalizeWordsFromArray:(NSArray *)words
{
    NSMutableArray *my_array = [[NSMutableArray alloc] init];
    
    for(NSString *elem in words)
    {
     //   [elem capitalizedString];
        [my_array addObject:[elem capitalizedString]];
    }
    NSLog(@"%@",my_array);
    return my_array;
}

-(NSString *)linkAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    NSMutableString *my_string = [[NSMutableString alloc] init];
    
    for(NSString *elem in words)
    {
        [my_string appendString:elem];
        [my_string appendString:separator];
        
    }
    
    NSMutableString *newString = [my_string substringToIndex:([my_string length] - 1)];
    
    NSLog(@"%@", newString);
    return my_string;
}

-(NSString *)linkAndCapitalizeAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    Ex1 *ex1 = [[Ex1 alloc] init];
    
    NSArray *my_first_string = [[NSArray alloc] init];
    NSString *my_second_string = [[NSString alloc] init];
    NSMutableString *my_final_string = [[NSMutableString alloc] init];
    
    my_first_string = [self cappitalizeWordsFromArray];
    
    
    NSLog(@"%@", my_final_string);
    return my_final_string;
}

-(NSString *)extractSubstringFromString:(NSString *)string starting:(NSUInteger)startIndex ending:(NSUInteger)endIndex
{
    //ex1
    return nil;
}

-(BOOL)checkPalindrome:(NSString *)string
{
    //ex1
    return NO;
}

-(BOOL)checkPalindromeFromCharPosition:(NSUInteger)index ofAllWordsFromArray:(NSArray *)array
{
    //ex1
    return NO;
}
@end
