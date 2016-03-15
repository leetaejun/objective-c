//
//  Fraction.m
//  prac_class
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i", _numerator, _denominator);
}

-(double) convertToNum
{
    if (_denominator != 0)
    {
        return (double) _numerator / _denominator;
    }
    else
    {
        return NAN;
    }
}

-(void) setTo:(int)n over:(int)d
{
    _numerator = n;
    _denominator = d;
}

-(void) add:(Fraction *)f
{
    _numerator = _numerator * f.denominator + _denominator * f.numerator;
    _denominator = _denominator * f.denominator;
}

-(void) reduce
{
    int u = _numerator;
    int v = _denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    _numerator /= u;
    _denominator /= u;
}

@end
