//
//  ViewController.m
//  DTCoreTestAutolayoutDemo
//
//  Created by 马旭 on 2018/1/22.
//  Copyright © 2018年 love. All rights reserved.
//

#import <Masonry/Masonry.h>
#import "UIView+Frame.h"
#import <DTCoreText/DTCoreText.h>

#import "ViewController.h"
#import "MyLabel.h"

@interface ViewController ()
@property (nonatomic, strong) MyLabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSString *html = @"<p>这是一段使用<strong>DTCoreText</strong>显示的富文本, 这是第二段使用<span style=\"text-decoration:underline;\">DTCoreText</span>显示的富文本</p>";
  self.label = [MyLabel new];
  NSDictionary *options = @{
                            //                            DTDefaultFontFamily: @"Avenir Next Heavy",
                            DTDefaultFontSize: @14.0,
                            NSTextSizeMultiplierDocumentOption: @1.5,
                            DTDefaultTextColor: [UIColor redColor],
                            //                            DTDefaultTextAlignment: [NSNumber
                            };
  NSData *data = [html dataUsingEncoding:NSUTF8StringEncoding];
  NSAttributedString *string = [[NSAttributedString alloc] initWithHTMLData:data options:options documentAttributes:NULL];
  self.label.attributedString = string;
  [self.view addSubview: self.label];
  
  //   !!!: change layout style here
  //  [self frameLayout];
  //  [self constraintsLayout];
}

- (void)viewDidLayoutSubviews {
  [super viewDidLayoutSubviews];
  self.label.frame = CGRectMake(50, 100, self.view.width-100, 0);
}

- (void)frameLayout {
  self.label.width = 100;
  [self.label sizeToFit];
}

- (void)constraintsLayout {
  [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerY.equalTo(self.view);
    make.left.equalTo(self.view);
    make.right.equalTo(self.view);
  }];
}

@end
