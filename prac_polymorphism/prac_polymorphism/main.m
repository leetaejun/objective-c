//
//  main.m
//  prac_polymorphism
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id dataValue;
        
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        
        [fraction setTo:2 over:5];
        [complex setReal:10.0 andImaginary:2.5];
        
        dataValue = fraction;
        [dataValue print];
        
        dataValue = complex;
        [dataValue print];
        
        if ([complex isKindOfClass:[NSObject class]] == YES) {
            NSLog(@"Complex is kind of nsobject class");
        }
        
        if ([complex isMemberOfClass:[NSObject class]] == YES) {
            NSLog(@"Complex is member of nsobject class");
        }
        
        if ([complex respondsToSelector:@selector(setReal:andImaginary:)] == YES) {
            NSLog(@"Complex responds to selector setRealandImagenary");
        }
        
        // try-catch
        Fraction *f = [[Fraction alloc] init];
        @try {
            [f noSuchMethod];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught %@%@", [exception name], [exception reason]);
        }
        @finally {
            NSLog(@"finally");
        }
    }
    return 0;
}
