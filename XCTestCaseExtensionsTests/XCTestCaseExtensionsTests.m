//
//  XCTestCaseExtensionsTests.m
//  XCTestCaseExtensionsTests
//
//  Created by Alexander Kolov on 12.11.14.
//  Copyright (c) 2014 Alexander Kolov. All rights reserved.
//

@import XCTest;
@import XCTestCaseExtensions;

@interface XCTestCaseExtensionsTests : XCTestCase

@end

@implementation XCTestCaseExtensionsTests

- (void)testThatXCTAssertWorks {
  [self XCTAssertThrows:^{
    [NSException raise:NSGenericException format:@"Non-specific exception"];
  } :@"An exception is expected"];
}

- (void)testThatXCTAssertThrowsSpecificWorks {
  [self XCTAssertThrowsSpecific:^{
    [NSException raise:NSInternalInconsistencyException format:@"Non-specific exception"];
  } :NSInternalInconsistencyException :@"NSInternalInconsistencyException is expected"];
}

@end
