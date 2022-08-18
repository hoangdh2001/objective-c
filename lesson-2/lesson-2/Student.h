//
//  Student.h
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person {
    NSString *studentEducation;
}

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender andEduction:(NSString *) education;

- (void) print;
    
@end

NS_ASSUME_NONNULL_END
