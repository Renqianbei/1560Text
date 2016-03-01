//
//  ViewController.swift
//  Swift TableView 的使用
//
//  Created by 任前辈 on 16/2/17.
//  Copyright © 2016年 SingleProgrammers. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDataSource{
    
    var tableView : UITableView?
    var dataSource : NSMutableArray = NSMutableArray()
    var cellID = "cellID";
    var  myview : MyView?
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.myview?.changeSomeThing()//swift中调用OC代码 
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initData()
        self.initView()
        
        let viewR = CGRectMake(100, 200, 200, 200)
        //swift中使用 OC类 
        
        self.myview = MyView(frame:viewR, backGroudColor: UIColor.yellowColor());
        
        self.view .addSubview(self.myview!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func initView(){
        
        tableView = UITableView(frame: self.view.bounds, style: .Plain)
        
        tableView?.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellID)
        
        tableView?.rowHeight = 100
        tableView?.dataSource = self
        
        
        self.view.addSubview(tableView!)
    }
    
    func initData() {
        
        
        for (var i  = 0 ; i < 20 ; i++ ){
            
            dataSource.addObject("object\(i)")
            
        }
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count;
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath)
        
        cell.textLabel?.text = (String)(dataSource.objectAtIndex(indexPath.row))
        
        
        return cell;
    }
}

