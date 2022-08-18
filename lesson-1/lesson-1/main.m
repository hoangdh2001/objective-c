//
//  main.m
//  getting_started
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Company.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Base class Person Object");
        Person *person = [[Person alloc] initWithName:@"Raj" andAge:5 andGender:false];
        [person print];
        [person nameIsEmpty] ? NSLog(@"Name is empty") : NSLog(@"Name is not empty");
        [person isWorkingAge] ? NSLog(@"Old is enough to work") : NSLog(@"Not is enough to work");

        // ------
        Company *company = [[Company alloc] init];
        NSLog(@"Sum employee is male = %d\n", [company sumEmployeeIsMale]);
        NSLog(@"Sum employee is female = %d\n", [company sumEmployeeIsFemale]);
    }
    return 0;
}
