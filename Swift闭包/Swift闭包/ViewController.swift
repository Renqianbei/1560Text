//
//  ViewController.swift
//  Swift闭包
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    
    var button : UIButton?  //定义了一个全局变量 button  ？允许为空
    
    
    override func viewWillAppear(animated: Bool) {
        
         super.viewWillAppear(animated)
        
        
        
        var rect = CGRectMake(100, 100, 200, 50)
        
         let label = UILabel(frame: rect)
        
         label.text = "hello world"
         label.backgroundColor = UIColor.blueColor()
        
         self.view.addSubview(label)
        
         rect = CGRectMake(100, 300, 200, 50)

        self.button = UIButton(type:.System)
        self.button?.frame = rect
        self.button?.setTitle("helloworld", forState:.Normal)
        self.button?.addTarget(self, action:"clickbutton:", forControlEvents:.TouchUpInside)
        
        
        self.view.addSubview(self.button!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [1,2,3,4,5,100];
        
        
        //闭包closeure
        let result = self.compare(array , hello:{
            (value1, value2) -> Bool in
            
            return value1 > value2;
            
            });
        
        print(result);
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
   
    
    //定义了函数
    func compare(arr:[Int] , hello:(value1 : Int ,value2 : Int) -> Bool )->Int {
        
        var tem = arr[0];
        
        
        for  a in arr{
            
            if (hello(value1: a, value2: tem)){
                
                tem = a;
                
            }
        }
        
        return tem;
        
    }
    
    
    //点击按钮的方法
    func clickbutton(value:UIButton){
        
        
        print(value.titleForState(.Normal))
        
    }
    
    
    

}











