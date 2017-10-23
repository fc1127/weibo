//
//  UIButton+FCUIButton.h
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FCUIButton)

-(void)buttonWith:(NSString *)title backColor:(UIColor*)color;
+(void)buttonWith:(CGRect)frame title:(NSString *)title backColor:(UIColor*)color;
+(void)buttonWith:(CGRect)frame title:(NSString *)title backImg:(NSString *)imgName;




@end
