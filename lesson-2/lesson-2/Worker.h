//
//  Worker.h
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Worker : Person {
    NSString *workRole;
}

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender andRole:(NSString *)role;

- (void) print;

@end

NS_ASSUME_NONNULL_END
