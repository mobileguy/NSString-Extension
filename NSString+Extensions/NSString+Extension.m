//
//  NSString+Extension.m
//  NSString+Extensions
//
//  Created by Otávio Zabaleta on 5/12/14.
//  Copyright (c) 2014 Otavio Zabaleta. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (BOOL)containsString:(NSString *)string {
    NSRange range = [self rangeOfString:string];
    if(range.location == NSNotFound) {
        return NO;
    }
    
    return YES;
}

- (NSString *)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)substringFromIndex:(NSUInteger)from toIndex:(NSUInteger)to {
    if((int)from < 0 || from > self.length || to > self.length || from >= to) {
        return nil;
    }
    
    NSRange range;
    range.location = from;
    range.length = to - from + 1;
    return [self substringWithRange:range];
}

- (BOOL)startsWith:(NSString *)string {
    NSRange range = [self rangeOfString:string];
    if(range.location == 0) {
        return YES;
    }
    
    return NO;
}

- (BOOL)endsWith:(NSString *)string {
    NSRange range = [self rangeOfString:string];
    NSUInteger endingPos = range.location + range.length;
    if(endingPos == self.length) {
        return YES;
    }
    
    return NO;
}



@end
