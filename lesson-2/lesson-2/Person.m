//
//  Person.m
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import "Person.h"

@implementation Person

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender {
    personName = name;
    personAge = age;
    personGender = gender;
    return self;
}

- (void)print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Gender: %@", personAge ? @"Female":@"Male");
}

@end
