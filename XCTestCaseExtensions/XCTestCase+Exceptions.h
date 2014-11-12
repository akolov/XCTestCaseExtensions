//
//  XCTestCase+Exceptions.h
//  Stylight
//
//  Created by Alexander Kolov on 18.9.14.
//  Copyright (c) 2014 Stylight. All rights reserved.
//

@import Foundation;
@import XCTest;

@interface XCTestCase (Exceptions)

- (void)XCTAssertThrows:(void (^)(void))block :(NSString *)message;
- (void)XCTAssertThrowsSpecific:(void (^)(void))block :(NSString *)name :(NSString *)message;

@end
