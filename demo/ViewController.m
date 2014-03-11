//
//  ViewController.m
//  demo
//
//  Created by yang on 13-7-12.
//  Copyright (c) 2013年 yang. All rights reserved.
//

#import "ViewController.h"
#import "YGPSegmentedController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
     YGPSegmentedController * _ygp;
     UILabel * label;
     
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     
     //初始化数据
     NSArray * TitielArray = [NSArray arrayWithObjects:@"网易", @"新浪", @"腾讯", @"搜狐", @"百度", @"谷歌", @"奇虎",@"阿里",@"火狐",@"天猫", nil];
     
 
     
     /*
     第一个参数是存放你需要显示的title
     第二个是设置你需要的size
      */
     _ygp = [[YGPSegmentedController alloc]initContentTitle:TitielArray CGRect:CGRectMake(0, 0, 320, 44)];
     
     [_ygp setDelegate:self];
     
     [self.view addSubview:_ygp];
     
     NSLog(@"init: %d",_ygp.initselectedSegmentIndex);
     
     label = [[UILabel alloc]initWithFrame:CGRectMake(100, 150, 200, 200)];
     label.font=[UIFont boldSystemFontOfSize:50.0];
     [self.view addSubview:label];
     
}
-(void)segmentedViewController:(YGPSegmentedController *)segmentedControl touchedAtIndex:(NSUInteger)index
{
     
     
     if (segmentedControl == _ygp) {
          NSLog(@"segmentedControl.index :%d",index);
          
          switch (index) {
               case 0:
                    NSLog(@"我是00");
                    break;
               case 1:
                    NSLog(@"我是01");
                    break;
               default:
                    break;
          }
     }
     
     
     
     NSString * string = [NSString stringWithFormat:@"%d",index];
     label.text=string;
     NSLog(@"%@",label.text);
     
     
     
     
     
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
