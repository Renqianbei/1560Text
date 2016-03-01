//
//  main.swift
//  swift协议
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//

import Foundation

print("Hello, World!")

//协议有基协议
//协议可以多继承
@objc protocol SortProtocol : NSObjectProtocol{
    
    //requied 必须实现的方法
    func compare(value : Int) ->Bool;
    
    //可选的  如果用到可选的 上面需要加上 @objc
    optional func begainCompare() ->Bool;
    
    
}

//第二个协议
protocol protocol2 : NSObjectProtocol{
    
    
}


//创建类

//person 继承NSObject   NSObject类型实现了 NSObjectProtocol 协议

class Person :NSObject, SortProtocol , protocol2{
    
    
    var age : Int = 0;
   
    init(age:Int) {
        
        self.age = age;
    }
    
    //实现协议中必须实现的方法
    @objc func compare(value: Int) -> Bool {
       
        
        return self.age > value;
        
    }
    
    //实现协议中可选的方法
    func begainCompare() -> Bool {
        return false;
    }
    
    
}



var wang = Person(age: 100);

print(wang.compare(200));


//将wang转换成 sortProtoclo类型
let hello  = wang as SortProtocol;

print(hello.begainCompare?());//begainCompare是可选的  所有加上？





