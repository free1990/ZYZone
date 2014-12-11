//
//  UIImage+Color.m
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size {
    //Create a context of the appropriate size
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //Build a rect of appropriate size at origin 0,0
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    //Set the fill color
    CGContextSetFillColorWithColor(context, color.CGColor);
    
    //Fill the color
    CGContextFillRect(context, rect);
    
    //Snap the picture and close the context
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
