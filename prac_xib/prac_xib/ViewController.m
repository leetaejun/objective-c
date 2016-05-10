//
//  ViewController.m
//  prac_xib
//
//  Created by lee taejun on 2016. 3. 22..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "ViewController.h"
#import "SubView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *subView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SubView *subView = [[NSBundle mainBundle] loadNibNamed:@"SubView" owner:self options:nil][0];
    subView.frame = self.subView.bounds;
    [self.subView addSubview:subView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
