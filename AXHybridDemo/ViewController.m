//
//  ViewController.m
//  AXHybridDemo
//
//  Created by 小星星吃KFC on 2021/9/3.
//

#import "ViewController.h"
#import "DemoCDVWebViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = UIButton.alloc.init;
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 50);
    btn.backgroundColor = UIColor.orangeColor;
    [btn setTitle:@"打开cordova容器" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(openCordova:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)openCordova:(UIButton *)btn{
    DemoCDVWebViewController *vc = DemoCDVWebViewController.alloc.init;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
