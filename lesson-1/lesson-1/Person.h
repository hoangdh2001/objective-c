//
//  Person.h
//  getting_started
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    NSString *personName;
    NSInteger personAge;
    Boolean personGender; // true is female, else
}

- (id) initWithName: (NSString *) name andAge: (NSInteger) age andGender: (Boolean) gender;
- (void) print;
- (BOOL) nameIsEmpty;
- (BOOL) isWorkingAge;
- (BOOL) isFemale;

@end

NS_ASSUME_NONNULL_END
