//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 唐桔 on 2018/5/22.
//  Copyright © 2018年 tangjie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let lab = UILabel.init(frame: CGRect.init(x: 50, y: 100, width: 250, height: 100))
    let lab1 = UILabel.init(frame: CGRect.init(x: 50, y: 220, width: 250, height: 100))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lab.backgroundColor = UIColor.green
        lab.text = "master 主分支"
        lab.textColor = UIColor.red
        lab.textAlignment = NSTextAlignment.center
        self.view.addSubview(lab)
        
        lab1.backgroundColor = UIColor.green
        lab1.text = "branch 分支"
        lab1.textColor = UIColor.red
        lab1.textAlignment = NSTextAlignment.center
        self.view.addSubview(lab1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

