//
//  main.swift
//  swift 类
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//

import Foundation

print("Hello, World!")


//创建一个person类
class Person {
    
    //两个成员变量
    var  name : String?; //?表示name为空 nil 或者没有设置 是可选的
    
    var age : Int  = 0
    
    //构造方法
    init() {
      name = "初始名字";
      age = 100
        
    }
    //第二个构造方法
    
    init(name:String , age : Int){
        
        self.name = name;
        self.age = age
    }
    
    //成员方法
    //带返回值  string类型
    func getName() -> String{
    
        return name!;//!可以返回nil
        
    }
    
    func getAge() ->Int{
        
        return age;
        
    }
    
    //类方法
    
    class func myPerson() ->Person {
        
        return   Person();
    }
    
    
    
    
}



var xiaoli = Person();//创建对象 通过init函数构造

  print("小明的名字\(xiaoli.getName())，年龄\(xiaoli.getAge())")


var  wang = Person(name:"小王", age: 200)//创建对象 通过init Name age 函数构造

print("wang的名字\(wang.name),年龄\(wang.age)");



var  hehe = Person.myPerson(); //通过类方法 创造对象

hehe.name = "123";

print("名字\(hehe.name),年龄\(hehe.age)");


















