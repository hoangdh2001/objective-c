//
//  Person.m
//  getting_started
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
}

- (BOOL)nameIsEmpty {
    if ([personName isEqualTo:@""])
        return true;
    else
        return false;
}

- (BOOL)isWorkingAge {
    if (personAge < 18)
        return false;
    if ((!personGender && personAge < 65) || (personGender && personAge < 60)) {
        return true;
    }
    return false;
}

- (BOOL)isFemale {
    return personGender;
}


@end
