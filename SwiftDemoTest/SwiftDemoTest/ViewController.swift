//
//  ViewController.swift
//  SwiftDemoTest
//
//  Created by 唐桔 on 2018/5/22.
//  Copyright © 2018年 tangjie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let lab = UILabel.init(frame: CGRect.init(x:20,y:50,width:200,height:50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lab.backgroundColor = UIColor.green
        lab.text = "git  测试"
        lab.textAlignment = NSTextAlignment.center
        lab.textColor = UIColor.red
        self.view.addSubview(lab)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

