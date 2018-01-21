//
//  UIView+Frame.m
//  DemoApp
//
//  Created by 马旭 on 2018/1/22.
//  Copyright © 2018年 Drobnik.com. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGFloat)left {
	return self.frame.origin.x;
}

- (CGFloat)right {
	return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)top {
	return self.frame.origin.y;
}

- (CGFloat)bottom {
	return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)width {
	return self.frame.size.width;
}

- (CGFloat)height {
	return self.frame.size.height;
}

- (CGFloat)centerX {
	return self.center.x;
}
- (CGFloat)centerY {
	return self.center.y;
}

- (CGSize)size {
	return self.bounds.size;
}

- (CGPoint)origin {
	return self.bounds.origin;
}

#pragma mark Middle Point

- (CGPoint)middlePoint {
	return CGPointMake(self.middleX, self.middleY);
}

- (CGFloat)middleX {
	return self.width / 2;
}

- (CGFloat)middleY {
	return self.height / 2;
}

#pragma mark - set方法
- (void)setLeft:(CGFloat)left {
	CGRect frame = self.frame;
	frame.origin.x = left;
	self.frame = frame;
}

- (void)setRight:(CGFloat)right {
	CGRect frame = self.frame;
	frame.origin.x = right - frame.size.width;
	self.frame = frame;
}

- (void)setBottom:(CGFloat)bottom {
	CGRect frame = self.frame;
	frame.origin.y = bottom - frame.size.height;
	self.frame = frame;
}
- (void)setHeight:(CGFloat)height {
	CGRect frame = self.frame;
	frame.size.height = height;
	self.frame = frame;
}

- (void)setSize:(CGSize)size {
	CGRect frame = self.frame;
	frame.size = size;
	self.frame = frame;
}

- (void)setTop:(CGFloat)top {
	CGRect frame = self.frame;
	frame.origin.y = top;
	self.frame = frame;
}

- (void)setWidth:(CGFloat)width {
	CGRect frame = self.frame;
	frame.size.width = width;
	self.frame = frame;
}

- (void)setOrigin:(CGPoint)point {
	CGRect frame = self.frame;
	frame.origin = point;
	self.frame = frame;
}

- (void)setCenterY:(CGFloat)centerY {
	CGPoint center = self.center;
	center.y = centerY;
	self.center = center;
}

- (void)setCenterX:(CGFloat)centerX {
	CGPoint center = self.center;
	center.x = centerX;
	self.center = center;
}
@end
