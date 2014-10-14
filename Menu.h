//
//  Menu.h
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-10.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Menu : NSObject
{
    NSMutableArray *menu;
}

@property (nonatomic,retain) NSMutableArray *menu;


+ (Menu *)ShareMenu;
- (NSMutableArray *)addObjectToMenu:(NSString *)newOjbect;
- (NSMutableArray *)moveObjectFromMenu:(NSString *)selectedObject;
@end
