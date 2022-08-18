//
//  main.m
//  lesson-2
//
//  Created by Do Huy Hoang on 17/08/2022.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Worker.h"
#import "Artist.h"
#import "Singer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:[[Person alloc] initWithName:@"Hoang" andAge:21 andGender:false]];
        [array addObject:[[Student alloc] initWithName:@"Hoang" andAge:21 andGender:false andEduction:@"IUH"]];
        [array addObject:[[Worker alloc] initWithName:@"Hoang" andAge:21 andGender:true andRole:@"Builder"]];
        [array addObject:[[Artist alloc] initWithName:@"Hoang" andAge:24 andGender:false]];
        [array addObject:[[Singer alloc] initWithName:@"Hoang" andAge:22 andGender:true]];
        for (int i = 0; i < array.count; i++) {
            NSLog(@"-----------------");
            [[array objectAtIndex:i] print];
        }

    }
    return 0;
}
