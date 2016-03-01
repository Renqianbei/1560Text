//
//  TextClass.swift
//  Swift TableView 的使用
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//

import UIKit

class TextClass: NSObject {

    var name : String?
   
    init(name : String){
        
     self.name = name
        
    }
    
    
    func textPrintName(){
        
        print("自己的名字\(self.name)")
    }
    
    func printSum(a:Int , b :Int) ->Int{
        
        return a + b ;
        
    }
}
