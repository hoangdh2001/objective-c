//
//  Employee.h
//  getting_started
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person {
    NSString *employeeEducation;
}

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender andEducation: (NSString *)education;

- (void) print;
    
@end

NS_ASSUME_NONNULL_END
