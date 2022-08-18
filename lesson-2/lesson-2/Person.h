//
//  Person.h
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    NSString *personName;
    NSInteger personAge;
    Boolean personGender;
}

- (id) initWithName:(NSString *) name andAge:(NSInteger) age andGender:(Boolean) gender;

- (void) print;

@end

NS_ASSUME_NONNULL_END
