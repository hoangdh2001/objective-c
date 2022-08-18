//
//  Employee.m
//  getting_started
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import "Employee.h"

@implementation Employee

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender andEducation:(NSString *)education {
    personName = name;
    personAge = age;
    personGender = gender;
    employeeEducation = education;
    return self;
}

- (void)print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Education: %@", employeeEducation);
}
@end
