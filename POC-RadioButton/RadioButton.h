//
//  UIView+RadioButton.h
//  POC-RadioButton
//
//  Created by Helaine Pontes on 22/07/21.
//

#import <UIKit/UIKit.h>

@interface RadioButton: UIView{
    UIButton *button;
    UILabel *label;
    CGFloat multiplier;
    UIColor *selectedColor,*unselectedColor, *fontColor;
    BOOL isSelect;
    NSArray *names;
}

-(instancetype)initWithMultiplier:(CGFloat)multiplierP selectedColor:(UIColor*)selectedColorP unselectedColor:(UIColor*)unselectedColorP fontColor:(UIColor*)fontColorP;
-(void)setOptions:(NSArray*)namesP;
-(void)setUpRadioButtons;
-(void) setUPConstraints:(UIButton*)newButton withLabel:(UILabel*)newLabel withXPosition:(CGFloat)xPosition;
@end

