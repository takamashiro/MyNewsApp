//
//  NewsListViewView.m
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-11.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "NewsListViewView.h"

@interface NewsListViewView ()
{
   NSMutableArray *demoData;
}
@end

@implementation NewsListViewView



- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.tableViewList == nil) {
    self.tableViewList = [[UITableView alloc]init];
    self.tableViewList.dataSource = self;
    self.tableViewList.delegate = self;
    }
    // Do any additional setup after loading the view.
    [self.view addSubview:self.tableViewList];
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"demoData"
                                           ofType:@"plist"];
    
    //[self.tableViewList registerClass:[WPNewsCell class] forCellReuseIdentifier:@"cell"];
    //获取属性列表文件中的全部数据
    demoData = [[NSMutableArray alloc]initWithContentsOfFile:plistPath];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidCurrentView
{
    NSLog(@"加载为当前视图 = %@",@"NSDefaultCenter");
}

#pragma mark -UITableViewDataSource & UITableDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    static int i=1;
    NSLog(@"cout:%d,cycle:%d",[demoData count],i);
    i++;
    return [demoData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WPNewsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
    {
        cell = [[WPNewsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    if (!cell)
//    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    }
    //news n = [news objectAtIndex:[indexPath row];
    NSUInteger row = [indexPath row];
    News *news= [demoData objectAtIndex:row];
    //NSDictionary *rowDict = [demoData objectAtIndex:row];
    [cell setContent:news];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
@end

