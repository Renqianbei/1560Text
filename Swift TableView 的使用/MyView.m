//
//  MyView.m
//  Swift TableView 的使用
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//

#import "MyView.h"

//OC中使用 Swift 需要导入固定的文件  本质是 swift 首先会将swift转换成OC代码  然后将OC代码转成c 然后编译运行

//#import <#ProductName#-Swift.h>


#import <HelloWorld-Swift.h>

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame backGroudColor:(UIColor *) color{
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = color;
        
    }
    
    [self test];
    return self;
}

-(void)test{
    
    //OC中使用swift文件
    
    TextClass * text = [[TextClass alloc] initWithName:@"驼铃引"];
    
    NSLog(@"%ld",[text printSum:10 b:20]);
    
    [text textPrintName];
    
}

-(void)changeSomeThing{
   
   
    
    
    [UIView animateWithDuration:1 animations:^{
        
        CGAffineTransform transFrom = CGAffineTransformMakeRotation(M_PI);
        self.transform = CGAffineTransformScale(transFrom, 0.5, 0.5);
        
         transFrom = CGAffineTransformMakeRotation(M_PI*2);
        
        self.transform = CGAffineTransformScale(transFrom, 0.2, 0.2);

    } completion:^(BOOL finished) {
        
        
    }];
}




@end
