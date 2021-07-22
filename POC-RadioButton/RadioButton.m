//
//  UIView+RadioButton.m
//  POC-RadioButton
//
//  Created by Helaine Pontes on 22/07/21.
//

#import "RadioButton.h"

@implementation RadioButton: UIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self baseInit];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    [self setButton];
    [self setLabel];
    [self setConstraints];
}

-(void) baseInit {
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    label = [[UILabel alloc] init];
}

-(void) setButton {
    [button addTarget:self
            action:@selector(wasTapped:)
            forControlEvents:UIControlEventTouchUpInside
     ];
    button.frame = CGRectMake(200, 200, 200, 200);
    [button setTitleColor:[UIColor blueColor] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage systemImageNamed:@"circle"] forState:(UIControlStateNormal)];
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:button];
}

-(void) setLabel {
    label.text = @"João";
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentLeft;
    [self addSubview:label];
}

-(void) setConstraints {
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
    [button.topAnchor constraintEqualToAnchor:self.topAnchor constant:10].active = YES;
    [button.heightAnchor constraintEqualToAnchor:self.heightAnchor multiplier:0.5].active = YES;
    [button.widthAnchor constraintEqualToConstant:button.frame.size.height].active = YES;
    
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [label.topAnchor constraintEqualToAnchor:button.bottomAnchor constant:5].active = YES;
    [label.centerXAnchor constraintEqualToAnchor:button.centerXAnchor].active = YES;
}

-(void)wasTapped:(UIButton*)sender {
    [button setBackgroundImage:[UIImage systemImageNamed:@"largecircle.fill.circle"] forState:(UIControlStateNormal)];
}

@end
