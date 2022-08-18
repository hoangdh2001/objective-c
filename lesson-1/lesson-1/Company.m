//
//  Company.m
//  getting_started
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import "Company.h"
#import "Employee.h"

@implementation Company

- (id)init {
    self = [super init];
    Employee *employee1 = [[Employee alloc]initWithName:@"Hoang" andAge:21 andGender:false andEducation:@"IUH"];
    Employee *employee2 = [[Employee alloc]initWithName:@"Hung" andAge:21 andGender:false andEducation:@"IUH"];
    Employee *employee3 = [[Employee alloc]initWithName:@"Hao" andAge:23 andGender:true andEducation:@"HH"];
    Employee *employee4 = [[Employee alloc]initWithName:@"Chinh" andAge:20 andGender:false andEducation:@"LL"];
    Employee *employee5 = [[Employee alloc]initWithName:@"Huu" andAge:30 andGender:false andEducation:@"YY"];
    Employee *employee6 = [[Employee alloc]initWithName:@"Duyen" andAge:44 andGender:true andEducation:@"PM"];
    Employee *employee7 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:true andEducation:@"HQ"];
    Employee *employee8 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee9 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:true andEducation:@"HQ"];
    Employee *employee10 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee11 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee12 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:true andEducation:@"HQ"];
    Employee *employee13 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee14 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee15 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee16 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:true andEducation:@"HQ"];
    Employee *employee17 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee18 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee19 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    Employee *employee20 = [[Employee alloc]initWithName:@"Thanh" andAge:55 andGender:false andEducation:@"HQ"];
    employees = [NSArray arrayWithObjects:employee1, employee2, employee3, employee4, employee5, employee6, employee7, employee8, employee9, employee10, employee11, employee12, employee13, employee14, employee15, employee16, employee17, employee18, employee19, employee20, nil];
    return self;
}

- (int)sumEmployeeIsMale {
    int sum = 0;
    for (int i = 0; i < employees.count; i++) {
        Employee *employee = [employees objectAtIndex:i];
        if (![employee isFemale])
            sum += 1;
    }
    return sum;
}

- (int)sumEmployeeIsFemale {
    int sum = 0;
    for (int i = 0; i < employees.count; i++) {
        Employee *employee = [employees objectAtIndex:i];
        if ([employee isFemale]) {
            sum += 1;
        }
    }
    return sum;
}

@end
