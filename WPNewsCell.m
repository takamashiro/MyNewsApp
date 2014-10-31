//
//  WPNewsCell.m
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-3.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "WPNewsCell.h"

@interface WPNewsCell ()

@end

@implementation WPNewsCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


//重写构造方法，让自定义的cell一创建出来就有子控件
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        self.newspic = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 80, 60)];
        
        self.newstitle = [[UILabel alloc]init];
        self.newstitle .frame = CGRectMake(10+80+5, 10, 250, 20);
        self.newstitle .numberOfLines = 0;
        self.newstitle .font = [UIFont boldSystemFontOfSize:14];
 
        
        self.newssummary = [[UILabel alloc]init];
        self.newssummary.frame = CGRectMake(10+80+5, 10+20+5, 250, 40);
        self.newssummary.font = [UIFont boldSystemFontOfSize:12];
        self.newssummary.textColor = [UIColor grayColor];
        
        [self.contentView addSubview:self.newspic];
        [self.contentView addSubview:self.newstitle];
        [self.contentView addSubview:self.newssummary];
    }
    return self;
}

- (void)setContent:(News *)info
{
  
    
        [self.newspic sd_setImageWithURL:[NSURL URLWithString:((NSDictionary*)info)[@"pic"]]];
        self.newstitle.text = ((NSDictionary*)info)[@"title"];
        self.newssummary.text =((NSDictionary*)info)[@"summary"];
 
}

@end
