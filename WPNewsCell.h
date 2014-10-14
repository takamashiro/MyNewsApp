//
//  WPNewsCell.h
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-3.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "News.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface WPNewsCell : UITableViewCell

@property (strong,nonatomic) UIImageView *newspic;
@property (strong,nonatomic) UILabel *newstitle;
@property (strong,nonatomic) UILabel *newssummary;

-(void)setContent:(News*)info;

@end
