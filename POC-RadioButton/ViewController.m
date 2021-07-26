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
    
//    radioButton = [[RadioButton alloc] initWithFontName:@"Arial" multiplier:0.8 fontSize:50 selectedColor:[UIColor greenColor] unselectedColor:[UIColor grayColor] fontColor:[UIColor redColor]];
    [radioButton setOptions:@[@"A", @"B", @"C", @"D", @"E", @"F"]];
    
    [self.view addSubview:radioButton];

    radioButton.translatesAutoresizingMaskIntoConstraints = NO;
    [radioButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [radioButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [radioButton.heightAnchor constraintEqualToConstant:100].active = YES;
    [radioButton.widthAnchor constraintEqualToConstant:300].active = YES;
    
//    RadioButtonController *rdb = [[RadioButtonController alloc] init];
//    [rdb setOptions:@[@"Option01", @"Option02", @"Option03"]];
    
//    [self.view addSubview:rdb.view];
//    rdb.view.translatesAutoresizingMaskIntoConstraints = NO;
//    [rdb.view.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
//    [rdb.view.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
//    [rdb.view.heightAnchor constraintEqualToConstant:100].active = YES;
//    [rdb.view.widthAnchor constraintEqualToConstant:300].active = YES;
}
@end

//id objects[] = { someObject, @"Hello, World!", @42 };
//NSUInteger count = sizeof(objects) / sizeof(id);
//NSArray *array = [NSArray arrayWithObjects:objects
//                                     count:count];
