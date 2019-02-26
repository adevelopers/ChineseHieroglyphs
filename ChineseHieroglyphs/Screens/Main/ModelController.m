//
//  ModelController.m
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import "ModelController.h"
#import "DataViewController.h"
#import "DataManager.h"
#import "DataViewModel.h"


@interface ModelController ()

@property (readonly, strong, nonatomic) DataViewModel* viewModel;


@end

@implementation ModelController

- (instancetype)init {
    self = [super init];
    if (self) {
        
        _viewModel = [[DataViewModel alloc] init];
    }
    return self;
}

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard {
    
    if (([self.viewModel.items count] == 0)
        || (index >= [self.viewModel.items count])) {
        return nil;
    }

    DataViewController *dataViewController = [storyboard instantiateViewControllerWithIdentifier:@"DataViewController"];
    dataViewController.model = self.viewModel.items[index];
    dataViewController.pageIndicator = [NSString stringWithFormat: @"%lu/%lu", (unsigned long)(index+1), (unsigned long)self.viewModel.items.count];
    return dataViewController;
}

- (NSUInteger)indexOfViewController:(DataViewController *)viewController {
    return [self.viewModel.items indexOfObject:viewController.model];
}


#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.viewModel.items count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

@end
