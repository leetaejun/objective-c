//
//  Rectangle.m
//  prac_inheritance
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

-(void) setOrigin: (XYPoint *) pt
{
    if (! origin) {
        origin = [[XYPoint alloc] init];
    }
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin
{
    return origin;
}

-(void) setWith:(int)w andHeight:(int)h
{
    _width = w;
    _height = h;
}

-(int) area
{
    return _width * _height;
}

-(int) perimeter
{
    return (_width + _height) * 2;
}

@end
