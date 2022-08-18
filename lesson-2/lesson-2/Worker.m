//
//  Worker.m
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import "Worker.h"

@implementation Worker

- (id) initWithName:(NSString *)name andAge:(NSInteger)age andGender:(Boolean)gender andRole:(NSString *)role {
    personName = name;
    personAge = age;
    personGender = gender;
    workRole = role;
    return self;
}

- (void)print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Gender: %@", personGender ? @"Female":@"Male");
    NSLog(@"Role: %@", workRole);
}
@end
