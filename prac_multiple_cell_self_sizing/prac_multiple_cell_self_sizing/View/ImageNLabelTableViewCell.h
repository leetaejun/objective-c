//
//  ImageNLabelTableViewCell.h
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageNLabelTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *testImageView;
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

- (void)setImageNLabelTableViewCellWithDictionary:(NSDictionary *)dictionary;

@end
