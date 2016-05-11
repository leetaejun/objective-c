//
//  PresentationTableView.m
//  prac_mvp
//
//  Created by lee taejun on 2016. 5. 11..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import "PresentationTableView.h"

@interface PresentationTableView() <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PresentationTableView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
