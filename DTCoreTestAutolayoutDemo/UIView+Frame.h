//
//  UIView+Frame.h
//  DemoApp
//
//  Created by 马旭 on 2018/1/22.
//  Copyright © 2018年 Drobnik.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)
- (CGFloat)left;
- (CGFloat)right;
- (CGFloat)top;
- (CGFloat)bottom;

- (CGFloat)width;
- (CGFloat)height;

- (CGFloat)centerX;
- (CGFloat)centerY;
- (CGSize)size;
- (CGPoint)origin;

- (CGPoint)middlePoint;
- (CGFloat)middleX;
- (CGFloat)middleY;

- (void)setLeft:(CGFloat)left;
- (void)setRight:(CGFloat)right;
- (void)setTop:(CGFloat)top;
- (void)setBottom:(CGFloat)bottom;

- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;

- (void)setSize:(CGSize)size;
- (void)setOrigin:(CGPoint)point;

- (void)setCenterX:(CGFloat)centerX;
- (void)setCenterY:(CGFloat)centerY;
@end
