//
//  DataManager.h
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject
+ (id)shared;

- (NSArray<DataModelProtocol>*)getItems;
@end

NS_ASSUME_NONNULL_END
