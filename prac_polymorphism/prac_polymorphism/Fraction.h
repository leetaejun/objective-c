//
//  Fraction.h
//  prac_polymorphism
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) noSuchMethod;
-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(void) add: (Fraction *) f;
-(void) reduce;

@end
