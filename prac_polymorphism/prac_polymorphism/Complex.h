//
//  Complex.h
//  prac_polymorphism
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double) real andImaginary:(double) imaginary;
-(Complex *) add: (Complex *) c;

@end
