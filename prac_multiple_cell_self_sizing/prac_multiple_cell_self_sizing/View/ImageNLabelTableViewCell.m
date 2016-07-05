//
//  ImageNLabelTableViewCell.m
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import "ImageNLabelTableViewCell.h"

@implementation ImageNLabelTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setImageNLabelTableViewCellWithDictionary:(NSDictionary *)dictionary {
    if (dictionary) {
        self.testImageView.image = [UIImage imageNamed:dictionary[@"ImageName"]];
        self.testLabel.text = dictionary[@"description"];
    } else {
        self.testImageView.image = [UIImage new];
        self.testLabel.text = @" ";
    }
}

@end
