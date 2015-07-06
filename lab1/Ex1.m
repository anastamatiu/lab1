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
    return newString;
}

-(NSString *)linkAndCapitalizeAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
 //   Ex1 *ex1 = [[Ex1 alloc] init];
    
    NSArray *my_first_string = [[NSArray alloc] init];
    NSMutableString *my_final_string = [[NSMutableString alloc] init];
    
    my_first_string = [self cappitalizeWordsFromArray:words];
    my_final_string = [self linkAllWordsFromArray:my_first_string usingSeparator:separator];
    
    NSLog(@"%@", my_final_string);
    return my_final_string;
}

-(NSString *)extractSubstringFromString:(NSString *)string starting:(NSUInteger)startIndex ending:(NSUInteger)endIndex
{
    NSString *my_string = [[NSMutableString alloc] init];
    
    my_string = [string substringWithRange:NSMakeRange(startIndex, endIndex - startIndex)];
    
    NSLog(@"%@", my_string);
    return my_string;
}

-(BOOL)checkPalindrome:(NSString *)string
{
    NSMutableString *reversedString = [[NSMutableString alloc] init];
    NSInteger charIndex = [string length];
    
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[string substringWithRange:subStrRange]];
    }
    
    NSLog(@"%@", reversedString);
    
    if([string isEqualToString:reversedString])
    {
        NSLog(@"YES");
        return YES;
    }
    return NO;
}

-(BOOL)checkPalindromeFromCharPosition:(NSUInteger)index ofAllWordsFromArray:(NSArray *)array
{
    NSMutableString *string = [[NSMutableString alloc] init];

    char c;
    
    for(NSString *elem in array)
    {
        if(index < [elem length])
        {
            c = [elem characterAtIndex:index];
            NSString *s = [NSString stringWithFormat:@"%c", c];
        
            NSLog(@"%@", s);
        
            [string appendString:s];
        }
        else
            return NO;
    }
    
    NSLog(@"%@", string);
    
    if([self checkPalindrome:string])
        return YES;
    
    return NO;
}

@end
