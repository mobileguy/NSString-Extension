//
//  NSString+ExtensionTest.m
//  NSString+Extensions
//
//  Created by Otávio Zabaleta on 5/12/14.
//  Copyright (c) 2014 Otavio Zabaleta. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Extension.h"

@interface NSString_ExtensionTest : XCTestCase

@end

@implementation NSString_ExtensionTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldContainString
{
    // GIVEN:
    NSString *string = @"This string contains this and that.";
    
    // WHEN:
    BOOL containsThis = [string containsString:@"this"];
    
    // THEN:
    XCTAssertTrue(containsThis == YES, @"");
}

- (void)testShould_NOT_ContainString
{
    // GIVEN:
    NSString *string = @"This string contains this and that.";
    
    // WHEN:
    BOOL containsThose = [string containsString:@"those"];
    
    // THEN:
    XCTAssertTrue(containsThose == NO, @"");
}

- (void)testShouldTrim
{
    // GIVEN:
    NSString *string = @"   Untrimmed string.   ";
    
    // WHEN:
    NSString *trimmedString = [string trim];
    
    // THEN:
    XCTAssertTrue([trimmedString isEqualToString:@"Untrimmed string."], @"");
}

- (void)testShouldGetSubstring
{
    // GIVEN:
    NSString *string = @"0123456789";
    
    // WHEN:
    NSString *substring = [string substringFromIndex:2 toIndex:5];
    
    // THEN:
    XCTAssertTrue([substring isEqualToString:@"2345"], @"");
}

- (void)testShoulStartWith
{
    // GIVEN:
    NSString *string = @"0123456789";
    
    // WHEN:
    BOOL startsWith012 = [string startsWith:@"012"];
    
    // THEN:
    XCTAssertTrue(startsWith012, @"");
}

- (void)testShoul_NOT_StartWith
{
    // GIVEN:
    NSString *string = @"0123456789";
    
    // WHEN:
    BOOL startsWith123 = [string startsWith:@"123"];
    
    // THEN:
    XCTAssertFalse(startsWith123, @"");
}

- (void)testShoulEndWith
{
    // GIVEN:
    NSString *string = @"0123456789";
    
    // WHEN:
    BOOL endsWith789 = [string endsWith:@"789"];
    
    // THEN:
    XCTAssertTrue(endsWith789, @"");
}

- (void)testShoul_NOT_EndWith
{
    // GIVEN:
    NSString *string = @"0123456789";
    
    // WHEN:
    BOOL endsWith678 = [string endsWith:@"678"];
    
    // THEN:
    XCTAssertFalse(endsWith678, @"");
}

@end
