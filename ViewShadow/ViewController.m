//
//  ViewController.m
//  ViewShadow
//
//  Created by SILICON on 14/09/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    [self setRoundCorner_BorderLayer:_viewFirst.layer cornerRadius:8 borderWidth:2 borderColor:[UIColor blueColor] maskToBounds:YES];
//    [self setShoadow_ShadowColorLayer:_viewFirst.layer shadowOffSetCGSizeMake:CGSizeMake(-15, 20) shadowRadius:8 shadowColor:[UIColor grayColor] shadowOpacity:1];
    
//    [self setRoundCorner_BorderLayer:_buttonFirst.layer cornerRadius:8 borderWidth:2 borderColor:[UIColor blueColor] maskToBounds:YES];
    [self setShoadow_ShadowColorLayer:_buttonFirst.layer shadowOffSetCGSizeMake:CGSizeMake(-15, 20) shadowRadius:8 shadowColor:[UIColor grayColor] shadowOpacity:1 maskToBounds:NO];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setRoundCorner_BorderLayer:(CALayer *)layer cornerRadius:(float)radius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor maskToBounds:(BOOL)maskToBounds
{
    layer.cornerRadius = radius;
    layer.borderWidth = borderWidth;
    layer.borderColor = borderColor.CGColor;
    layer.masksToBounds = maskToBounds;
    return;
}


- (void)setShoadow_ShadowColorLayer:(CALayer *)layer shadowOffSetCGSizeMake:(CGSize)offSetSize shadowRadius:(float)radius shadowColor:(UIColor *)color shadowOpacity:(float)opacity maskToBounds:(BOOL)maskToBounds
{
    layer.shadowOffset = offSetSize;
    layer.shadowRadius = radius;
    layer.shadowColor = color.CGColor;
    layer.shadowOpacity = opacity;
    layer.masksToBounds = maskToBounds;
    layer.shadowPath = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
    return;
}




@end
