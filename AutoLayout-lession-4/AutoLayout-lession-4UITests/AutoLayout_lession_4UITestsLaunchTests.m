//
//  AutoLayout_lession_4UITestsLaunchTests.m
//  AutoLayout-lession-4UITests
//
//  Created by Do Huy Hoang on 22/08/2022.
//

#import <XCTest/XCTest.h>

@interface AutoLayout_lession_4UITestsLaunchTests : XCTestCase

@end

@implementation AutoLayout_lession_4UITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
