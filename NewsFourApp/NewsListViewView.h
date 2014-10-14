//
//  NewsListViewView.h
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-11.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "News.h"
#import "WPNewsCell.h"

@interface NewsListViewView : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableViewList;

- (void)viewDidCurrentView;

@end
