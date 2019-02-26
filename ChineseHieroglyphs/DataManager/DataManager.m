//
//  DataManager.m
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModelProtocol.h"
#import "DataManager.h"
#import "DataModel.h"


@implementation DataManager

+ (id)shared {
    static DataManager *_shared = nil;
    @synchronized(self) {
        if (_shared == nil)
            _shared = [[self alloc] init];
    }
    return _shared;
}


- (NSArray<DataModelProtocol>*) getItems {    
    NSArray<DataModelProtocol>* items = (NSArray<DataModelProtocol>*) @[
                                     [[DataModel alloc] initWith: @"one"],
                                     [[DataModel alloc] initWith: @"two"],
                                     [[DataModel alloc] initWith: @"three"],
                                     [[DataModel alloc] initWith: @"four"],
                                     [[DataModel alloc] initWith: @"five"]
                        ];
    
    return items;
}

@end
