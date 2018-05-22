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
    
    let imageV = UIImageView.init(frame: CGRect.init(x: 50, y: 350, width: 250, height: 170))
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
        
        self.view.addSubview(imageV)
        
        let downloadTask = NetworkDownloadTask.init()
        downloadTask.urlStr = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1521722498988&di=40acbcccbe456700785ea608ac1f7279&imgtype=0&src=http%3A%2F%2Fi2.sanwen.net%2Fdoc%2F1609%2F831-160Z20P342-50.jpg"
        downloadTask.delegate = self
        downloadTask.startRequest()
        
//        let url1 = URL.init(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1521722498988&di=40acbcccbe456700785ea608ac1f7279&imgtype=0&src=http%3A%2F%2Fi2.sanwen.net%2Fdoc%2F1609%2F831-160Z20P342-50.jpg")
//        let request = URLRequest.init(url: url1!)
//        let downloadSessionTask = URLSession.shared.downloadTask(with: request) { [weak self](url, response, error) -> Void in
//            if url?.path != nil{
//                print("图片地址:\(String(describing: url?.path))")
//                let data1 = NSData.init(contentsOfFile: url!.path)
//                let image = UIImage.init(data: data1! as Data)
//                DispatchQueue.main.async {
//                    self?.imageV.image = image
//                }
//            }
//        }
//        downloadSessionTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController:NetWorkDelegate{
    func downloadImage(image: UIImage) {
        self.imageV.image = image
    }
    
}
