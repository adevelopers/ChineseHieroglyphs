//
//  DataModel.m
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import "DataModel.h"


@implementation DataModel

- (id)initWith: (NSString*) name {
    self = [super init];
    _title = name;
    
    return self;
};


- (NSString*)getTitle {
    return _title;
};

@end
