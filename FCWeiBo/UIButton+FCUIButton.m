//
//  UIButton+FCUIButton.m
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

#import "UIButton+FCUIButton.h"

@implementation UIButton (FCUIButton)


-(void)buttonWith:(NSString *)title backColor:(UIColor *)color{
    [self setTitle:title forState:UIControlStateNormal];
     [self setBackgroundColor:color];
    
}



@end
