//
//  MainViewController.m
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import "MainViewController.h"
#import "LabelTableViewCell.h"
#import "ImageNLabelTableViewCell.h"
#import "FixedHeightView.h"

static CGFloat const kEstimatedRowHeight            = 100.0;
static NSString *const kLabelTableViewCellId        = @"LabelTableViewCellId";
static NSString *const kImageNLabelTableViewCellId  = @"ImageNLabelTableViewCellId";
static NSString *const kFixedHeightViewId           = @"FixedHeightViewId";

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *testArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"UITableView Self-Sizing";
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = kEstimatedRowHeight;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerNib:[UINib nibWithNibName:@"LabelTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:kLabelTableViewCellId];
    [self.tableView registerNib:[UINib nibWithNibName:@"ImageNLabelTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:kImageNLabelTableViewCellId];
    self.tableView.tableFooterView = [[UITableViewHeaderFooterView alloc] initWithFrame:CGRectZero];
    
    
    [self initTestData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initTestData {
    self.testArray = @[
                       @[@{@"description":@"이 라벨은 짧은 라벨입니다."},
                         @{@"description":@"이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다. \n 이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다."},
                         @{@"description":@"이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다."},
                         @{@"description":@"이 라벨은 짧은 라벨입니다."},
                         @{@"description":@"이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다. \n 이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다."},
                         @{@"description":@"이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다."}],
                       @[@{@"ImageName":@"test_image", @"description":@"이 라벨은 짧은 라벨입니다."},
                         @{@"ImageName":@"test_image", @"description":@"이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다. \n 이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다."},
                         @{@"ImageName":@"test_image", @"description":@"이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다."},
                         @{@"ImageName":@"test_image", @"description":@"이 라벨은 짧은 라벨입니다."},
                         @{@"ImageName":@"test_image", @"description":@"이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다. \n 이 라벨은 적당히 긴 라벨입니다. 이 라벨은 적당히 긴 라벨입니다."},
                         @{@"ImageName":@"test_image", @"description":@"이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다. \n\n 이 라벨은 긴 라벨입니다. 이 라벨은 긴 라벨입니다."}],
                        @[@{}]
                       ];

    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.testArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *dataArray = [self.testArray objectAtIndex:section];
    return dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dictionary = self.testArray[indexPath.section][indexPath.row];
    
    /** Label만 존재하는 셀 */
    if (indexPath.section == 0) {
        LabelTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kLabelTableViewCellId];
        [cell setLabelTableViewCellWithDictionary:dictionary];
        
        return cell;
    }
    /** Label과 ImageView가 존재하는 셀 */
    else if (indexPath.section == 1) {
        ImageNLabelTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kImageNLabelTableViewCellId];
        [cell setImageNLabelTableViewCellWithDictionary:dictionary];
        
        return cell;
    }
    /** 커스텀 뷰 셀 */
    else if (indexPath.section == 2) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFixedHeightViewId];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kFixedHeightViewId];
            cell.contentView.backgroundColor = [UIColor whiteColor];
            
            NSString const *viewHeight = @"300";

            FixedHeightView *fixedHeightView = [[FixedHeightView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(cell.contentView.frame), viewHeight.floatValue)];
            fixedHeightView.translatesAutoresizingMaskIntoConstraints = NO;
            
            [cell.contentView addSubview:fixedHeightView];
            
            NSDictionary* views = NSDictionaryOfVariableBindings(fixedHeightView);
            
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-8-[fixedHeightView]"
                                                                                     options:0
                                                                                     metrics:nil
                                                                                       views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[fixedHeightView]-8-|"
                                                                                     options:0
                                                                                     metrics:nil
                                                                                       views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:|-8-[fixedHeightView(%f@999)]", viewHeight.floatValue]
                                                                                     options:0
                                                                                     metrics:nil
                                                                                       views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[fixedHeightView]-8-|"
                                                                                     options:0
                                                                                     metrics:nil
                                                                                       views:views]];
        }
        
        return cell;
    } else {
        return nil;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
