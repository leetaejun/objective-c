//
//  LabelTableViewCell.m
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import "LabelTableViewCell.h"

@implementation LabelTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setLabelTableViewCellWithDictionary:(NSDictionary *)dictionary {
    if (dictionary) {
        self.testLabel.text = dictionary[@"description"];
    } else {
        self.testLabel.text = @" ";
    }
}

@end
