//
//  DataModel.h
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataModel : NSObject<DataModelProtocol>
@property (strong)  NSString* title;

- (id)initWith: (NSString*) name;
- (NSString*)getTitle;

@end

NS_ASSUME_NONNULL_END
