//
//  main.m
//  prac_inheritance
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Square test
        Square *square = [[Square alloc] init];
        
        [square setSide:5];
        
        NSLog(@"side = %i", [square side]);
        NSLog(@"area = %i, perimeter = %i", [square area], [square perimeter]);
        
        
        // Rectangle & XYPoint test
        Rectangle *rectangle = [[Rectangle alloc] init];
        XYPoint *point = [[XYPoint alloc] init];
        
        [point setX:100 setY:200];
        
        [rectangle setWith:5 andHeight:8];
        rectangle.origin = point;
        
        NSLog(@"Rectangle width = %i, height = %i", rectangle.width, rectangle.height);
        NSLog(@"Origin at (%i, %i)", rectangle.origin.x, rectangle.origin.y);
        NSLog(@"area = %i, perimeter = %i", [rectangle area], [rectangle perimeter]);
        
        [point setX:50 setY:100];
        NSLog(@"Origin at (%i, %i)", rectangle.origin.x, rectangle.origin.y);
    }
    return 0;
}
