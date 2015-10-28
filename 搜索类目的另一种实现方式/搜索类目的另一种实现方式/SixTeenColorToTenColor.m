//
//  UIColor+_6ColorTo10Color.m
//  16进制颜色的转换
//
//  Created by narcissu on 15/10/26.
//  Copyright © 2015年 narcissu. All rights reserved.
//

#import "SixTeenColorToTenColor.h"

@implementation UIColor (SixTeenColorToTenColor)

+ (UIColor *)colorFrom16String:(NSString *)colorStrig{
    return [UIColor colorWithRed:[self colorStringToInt:colorStrig colorNo:0]/255.0f green:[self colorStringToInt:colorStrig colorNo:1]/255.0f blue:[self colorStringToInt:colorStrig colorNo:2]/255.0f alpha:1.0f];
    
}

+ (int)colorStringToInt:(NSString *)colorStrig colorNo:(int)colorNo
{
    const char *cstr;
    int iPosition = 0;
    int nColor = 0;
    cstr = [colorStrig UTF8String];
    
    //判断是否有#号
    if (cstr[0] == '#') iPosition = 1;//有#号，则从第1位开始是颜色值，否则认为第一位就是颜色值
    else iPosition = 0;
    
    //第1位颜色值
    iPosition = iPosition + colorNo*2;
    if (cstr[iPosition] >= '0' && cstr[iPosition] < '9') nColor = (cstr[iPosition] - '0') * 16;
    else  nColor = (cstr[iPosition] - 'A' + 10) * 16;
    
    //第2位颜色值
    iPosition++;
    if (cstr[iPosition] >= '0' && cstr[iPosition] < '9') nColor = nColor + (cstr[iPosition] - '0');
    else nColor = nColor + (cstr[iPosition] - 'A' + 10);
    
    return nColor;
}
@end
