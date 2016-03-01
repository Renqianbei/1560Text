//
//  main.swift
//  swift ——setgeter结构体
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//

import Foundation

print("Hello, World!")


struct Point {
    var x:Int = 0
    var y:Int = 0
}

struct Size {
    var width:Int = 0
    var height:Int = 0
    
}

struct  Rect {
    
    var origin = Point();
    
    var size = Size()
    
//    @lazy 懒加载 用来修饰变量  当变量使用到时才创建
    
    //创建center类型  center是一个计算属性
    var center : Point {
        
       //实现set get 方法
        set(newCenter){
            self.origin.x = newCenter.x - self.size.width/2;
            self.origin.y =  newCenter.y - self.size.height/2;
            
        }
        
        get{
            let x = origin.x + size.width/2;
            let y =  origin.y + size.height/2
            
            return Point(x: x, y: y);
            
        }
        
       
    }
    
    
}

//
var rect = Rect();
rect.origin = Point(x: 20, y: 20)

rect.center = Point(x: 100, y: 100);

print(rect.origin);



