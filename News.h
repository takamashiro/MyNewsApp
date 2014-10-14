//
//  News.h
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-3.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

@property (nonatomic,strong) NSString *imgurl;
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *summary;

- (id)initWithDictionary:(NSDictionary*)dictionary;
@end
