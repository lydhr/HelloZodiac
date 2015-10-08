//
//  ViewController.swift
//  HelloIOSSingle
//
//  Created by 李茵 on 15/9/29.
//  Copyright (c) 2015年 李茵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let yearList=["鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪"]
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("viewDidload in helloIOSSingle")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func didClickedGet(sender: UIButton) {
        if var num=Int(self.year.text!){
            num=(num+8)%12
            self.result.text="It is \(yearList[num]) Year"
        }else{
            self.result.text="Please input a number"
        }
        
    }


}

