//
//  ViewController.m
//  POC-RadioButton
//
//  Created by Helaine Pontes on 22/07/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    radioButton = [[RadioButton alloc] init];
    [self.view addSubview:radioButton];
    
    radioButton.translatesAutoresizingMaskIntoConstraints = NO;
    [radioButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [radioButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [radioButton.heightAnchor constraintEqualToConstant:100].active = YES;
    [radioButton.widthAnchor constraintEqualToConstant:300].active = YES;
}
@end
