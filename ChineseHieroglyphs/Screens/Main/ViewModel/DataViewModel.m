//
//  DataViewModel.m
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import "DataViewModel.h"
#import "DataManager.h"

@implementation DataViewModel

-(id) init {
    self = [super init];
    if (self) {
        _items = [[[DataManager shared] getItems] copy];
    }
    return self;
}

@end
