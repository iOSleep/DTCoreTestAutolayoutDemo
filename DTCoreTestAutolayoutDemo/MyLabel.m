//
//  MyLabel.m
//  DemoApp
//
//  Created by 马旭 on 2018/1/22.
//  Copyright © 2018年 Drobnik.com. All rights reserved.
//

#import "MyLabel.h"
#import "UIView+Frame.h"

@interface MyLabel ()
@property (nonatomic, strong) DTAttributedLabel *dtLabel;
@property (nonatomic, assign) CGFloat layoutWidth;
@property (nonatomic, assign) CGFloat layoutHeight;
@end

@implementation MyLabel
- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self setup];
  }
  return self;
}

- (void)awakeFromNib
{
  [super awakeFromNib];
  [self setup];
}

- (void)setup {
  self.dtLabel = [[DTAttributedLabel alloc] init];
  self.dtLabel.layoutFrameHeightIsConstrainedByBounds = NO;
  [self addSubview:self.dtLabel];
}

- (void)setAttributedString:(NSAttributedString *)attributedString {
  _attributedString = attributedString;
  self.dtLabel.attributedString = attributedString;
}

- (CGSize)intrinsicContentSize {
  return self.dtLabel.size;
}

- (CGSize)sizeThatFits:(CGSize)size
{
  if (self.dtLabel.layoutFrameHeightIsConstrainedByBounds) {
    self.dtLabel.height = size.height;
  } else {
    self.dtLabel.width = size.width;
  }
  [self.dtLabel sizeToFit];
  return self.dtLabel.size;
}

- (void)layoutSubviews {
  [super layoutSubviews];
  self.layoutWidth = self.width;
  self.layoutHeight = self.height;
  if (self.dtLabel.layoutFrameHeightIsConstrainedByBounds) {
    self.dtLabel.height = self.layoutHeight;
  } else {
    self.dtLabel.width = self.layoutWidth;
  }
  [self.dtLabel sizeToFit];
  [self invalidateIntrinsicContentSize];
}
@end
