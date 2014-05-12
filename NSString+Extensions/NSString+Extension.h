//
//  NSString+Extension.h
//  NSString+Extensions
//
//  Created by Otávio Zabaleta on 5/12/14.
//  Copyright (c) 2014 Otavio Zabaleta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

- (BOOL)containsString:(NSString *)string;

- (NSString *)trim;

- (NSString *)substringFromIndex:(NSUInteger)from toIndex:(NSUInteger)to;

- (BOOL)startsWith:(NSString *)string;

- (BOOL)endsWith:(NSString *)string;

@end
