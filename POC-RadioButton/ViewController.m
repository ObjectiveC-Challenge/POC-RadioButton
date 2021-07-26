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
    
    //radioButton = [[RadioButton alloc] initWithMultiplier:0.5 selectedColor:[UIColor yellowColor] unselectedColor:[UIColor greenColor] fontColor:[UIColor blueColor]];
    [radioButton setOptions:@[@"A", @"B", @"C", @"D", @"E", @"F"]];
    
    [self.view addSubview:radioButton];

    radioButton.translatesAutoresizingMaskIntoConstraints = NO;
    [radioButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [radioButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [radioButton.heightAnchor constraintEqualToConstant:100].active = YES;
    [radioButton.widthAnchor constraintEqualToConstant:300].active = YES;
}
@end
