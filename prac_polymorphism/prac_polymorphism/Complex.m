//
//  Complex.m
//  prac_polymorphism
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "Complex.h"

@implementation Complex

-(void) print
{
    NSLog(@"%g + %gi", _real, _imaginary);
}

-(void) setReal:(double)real andImaginary:(double)imaginary
{
    _real = real;
    _imaginary = imaginary;
}

-(Complex *) add:(Complex *)c
{
    Complex *result = [[Complex alloc] init];
    
    result.real = c.real;
    result.imaginary = c.imaginary;
    
    return result;
}

@end
