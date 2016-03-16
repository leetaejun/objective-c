//
//  Square.m
//  prac_inheritance
//
//  Created by lee taejun on 2016. 3. 16..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s
{
    [self setWith:s andHeight:s];
}

-(int) side
{
    return self.width;
}

@end
