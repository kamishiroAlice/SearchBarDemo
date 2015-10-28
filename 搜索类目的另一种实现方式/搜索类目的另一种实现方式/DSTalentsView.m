//
//  DSTalentsView.m
//  搜索类目
//
//  Created by narcissu on 15/10/27.
//  Copyright © 2015年 narcissu. All rights reserved.
//

#import "DSTalentsView.h"
#import "SixTeenColorToTenColor.h"
@interface DSTalentsView ()
@property (weak, nonatomic) IBOutlet UILabel *personNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *personConpanyLabel;
@property (weak, nonatomic) IBOutlet UILabel *personLocAndEduLabel;
@property (weak, nonatomic) IBOutlet UILabel *monthLabel;
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;

@end


@implementation DSTalentsView

- (void)awakeFromNib {
    [self settingColor];
    // Initialization code
    
}

- (void)settingColor{
    [self.personNameLabel setTextColor:[UIColor colorFrom16String:@"2d2d34"]];
    [self.personConpanyLabel setTextColor:[UIColor colorFrom16String:@"2d2d34"]];
    [self.personLocAndEduLabel setTextColor:[UIColor colorFrom16String:@"828285"]];
    [self.monthLabel setTextColor:[UIColor colorFrom16String:@"828285"]];
    [self.moneyLabel setTextColor:[UIColor colorFrom16String:@"fe269a"]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
