//
//  main.m
//  prac_class
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *firstFraction = [[Fraction alloc] init];
        Fraction *secondFraction = [[Fraction alloc] init];
        
        [firstFraction setTo:1 over:3];
        [firstFraction print];

        [secondFraction setTo:10 over:5];
        [secondFraction print];
        
        [firstFraction add:secondFraction];
        [firstFraction print];
        
        [firstFraction reduce];
        [firstFraction print];
        
    }
    return 0;
}
