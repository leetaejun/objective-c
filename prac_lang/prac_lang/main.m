//
//  main.m
//  prac_lang
//
//  Created by lee taejun on 2016. 3. 15..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <Foundation/Foundation.h>

// @interface
@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

// @implementation
@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(int) numerator
{
    return numerator;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) denominator
{
    return denominator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;
        
        myFraction = [[Fraction alloc] init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        NSLog(@"%i/%i", [myFraction numerator], [myFraction denominator]);
        
    }
    return 0;
}
