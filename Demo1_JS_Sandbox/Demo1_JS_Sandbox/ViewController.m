//
//  ViewController.m
//  Demo1_JS_Sandbox
//
//  Created by  江苏 on 16/3/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* string=@"abc";
    NSString* path=[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/a.txt"];
    //得到documents路径的方法
    NSString* documentsPath=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"%@",documentsPath);
    //得到缓存文件夹caches的方法
    NSString* cachesPath=NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    //获取临时文件夹路径
    NSString* tmpPath=NSTemporaryDirectory();
    //H获取资源路径的方法
    //方法1
//    NSString* imagePath=[NSString stringWithFormat:@"%@/Demo1_JS_Sandbox.app/yangmi01.jpg",NSHomeDirectory()];
    //方法2
    NSString* imagePath=[[NSBundle mainBundle] pathForResource:@"yangmi01" ofType:@"jpg"];
    //方法3
    NSString* imagepath=[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"yangmi01"];
    NSData* data=[NSData dataWithContentsOfFile:imagePath];
    NSString* newFilePath=[documentsPath stringByAppendingPathComponent:@"yangmi01.jpg"];
    [data writeToFile:newFilePath atomically:YES];
    [string writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
