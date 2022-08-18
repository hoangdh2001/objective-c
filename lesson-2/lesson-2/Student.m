//
//  Student.m
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import "Student.h"

@implementation Student

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender andEduction:(NSString *)education {
    personName = name;
    personAge = age;
    personGender = gender;
    studentEducation = education;
    return self;
}

- (void)print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Gender: %@", personGender ? @"Female":@"Male");
    NSLog(@"Education: %@", studentEducation);
}

@end
