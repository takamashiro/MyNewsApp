//
//  News.m
//  NewsFourApp
//
//  Created by 肖驰 on 14-10-3.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "News.h"

@implementation News


- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.imgurl = [dictionary valueForKey:@"pic"];
        self.title = [dictionary valueForKey:@"title"];
        self.summary = [dictionary valueForKey:@"summary"];
    }
    return self;
}
@end
