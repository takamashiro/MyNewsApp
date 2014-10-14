//
//  Menu.m
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-10.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "Menu.h"

@implementation Menu
@synthesize menu = _menu;

+ (Menu *)ShareMenu
{
    static Menu *menuInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        menuInstance = [[self alloc] init];
    });
    return menuInstance;
}

- (NSMutableArray *)menu
{
    if( nil == _menu)
    {
        _menu = [[NSMutableArray alloc]initWithObjects:@"热点",@"社会",@"法制", @"军事", @"明星", @"电影", @"科技", @"测试7", @"测试8", @"测试9", nil];
    }
    return _menu;
}

- (NSMutableArray *)addObjectToMenu:(NSString *)newOjbect
{
    [_menu addObject:newOjbect];
    return _menu;
}

- (NSMutableArray *)moveObjectFromMenu:(NSString *)selectedObject
{
    int current = 0;
    for (; current<[_menu count]; current++) {
        if ([_menu objectAtIndex:current] == selectedObject) break;
    }
    [_menu removeObjectAtIndex:current];
    return _menu;
}
@end
