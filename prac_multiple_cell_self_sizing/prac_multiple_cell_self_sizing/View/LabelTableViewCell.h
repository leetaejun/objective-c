//
//  LabelTableViewCell.h
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

- (void)setLabelTableViewCellWithDictionary:(NSDictionary *)dictionary;

@end
