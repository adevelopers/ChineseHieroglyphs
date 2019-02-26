//
//  DataViewController.m
//  ChineseHieroglyphs
//
//  Created by Kirill Khudiakov on 26/02/2019.
//  Copyright © 2019 Kirill Khudiakov. All rights reserved.
//

#import "DataViewController.h"
#import "DataModelProtocol.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.pageIndicator = @"";
    [self addLabels];
    [self setupConstraints];
}

- (void)addLabels {
    _labelPageCounter = [[UILabel alloc] initWithFrame: CGRectZero];
    _labelPageCounter.text = self.pageIndicator;
    [self.view addSubview: _labelPageCounter];
}

- (void)setupConstraints {
    _labelPageCounter.translatesAutoresizingMaskIntoConstraints = NO;

    [[_labelPageCounter topAnchor] constraintEqualToAnchor: self.view.topAnchor constant: 20].active = YES;
    [[_labelPageCounter leftAnchor] constraintEqualToAnchor: self.view.leftAnchor constant: 20].active = YES;
    [[_labelPageCounter rightAnchor] constraintEqualToAnchor: self.view.rightAnchor constant: -20].active = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.model getTitle];
    self.labelPageCounter.text = self.pageIndicator;
}

@end
