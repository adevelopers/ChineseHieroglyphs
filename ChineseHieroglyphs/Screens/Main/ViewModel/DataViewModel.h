//
//  DataViewModel.h
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataViewModel : NSObject

@property (strong) NSArray<DataModelProtocol>* items;

-(id) init;

@end

NS_ASSUME_NONNULL_END
