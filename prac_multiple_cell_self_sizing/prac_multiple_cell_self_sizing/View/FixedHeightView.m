//
//  FixedHeightView.m
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import "FixedHeightView.h"

@implementation FixedHeightView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initializeView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self initializeView];
    }
    return self;
}

- (void)initializeView {
    self.backgroundColor = [UIColor grayColor];
    
    UILabel *label = [UILabel new];
    label.numberOfLines = 0;
    label.text = @"커스텀 뷰도 오토레이아웃과 셀프사이징을 이용하게 되면, tableView의 heightForRowAtIndexPath를 통해 높이를 던져주지 않아도 높이를 잡아 줄 수 있습니다.";
    [label setTextColor:[UIColor whiteColor]];
    [label sizeToFit];
    
    label.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addSubview:label];
    
    NSDictionary* views = NSDictionaryOfVariableBindings(label);
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-12-[label]" options:0 metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[label]-12-|" options:0 metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-12-[label]" options:0 metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[label]-12-|" options:0 metrics:nil views:views]];
}

@end
