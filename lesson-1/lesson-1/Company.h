//
//  Company.h
//  getting_started
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Company : NSObject {
    NSArray *employees;
}

- (id) init;

- (int) sumEmployeeIsMale;

- (int) sumEmployeeIsFemale;

@end

NS_ASSUME_NONNULL_END
