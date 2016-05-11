//
//  PresentationViewController.m
//  prac_mvp
//
//  Created by lee taejun on 2016. 5. 11..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "PresentationViewController.h"
#import "PresentationTableView.h"

@interface PresentationViewController ()

@property (strong, nonatomic) PresentationTableView *tableView;

@end

@implementation PresentationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.tableView = [[NSBundle mainBundle] loadNibNamed:@"PresentationTableView" owner:self options:nil][0];
    self.tableView.frame = self.view.bounds;
    [self.view addSubview:self.tableView];
}

@end
