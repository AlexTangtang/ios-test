//
//  NetworkDownloadTask.swift
//  SwiftDemo
//
//  Created by 唐桔 on 2018/5/22.
//  Copyright © 2018年 tangjie. All rights reserved.
//

import UIKit

protocol NetWorkDelegate {
    func downloadImage(image:UIImage)
}

class NetworkDownloadTask: NSObject {
    
    var delegate:NetWorkDelegate?
    
    var urlStr:String = "url为空"{
        didSet{
            print("urlStr:\(urlStr)")
        }
    }
    
    override init() {
        
    }
    
    func startRequest(){
        let session = URLSession.shared
        let url1 = URL.init(string: self.urlStr)
        let request = URLRequest.init(url: url1!)
        let sessionTask = session.downloadTask(with: request) { (url, response, error) in
            if url?.path != nil{
                let data1 = NSData.init(contentsOfFile: url!.path)
                let image = UIImage.init(data: data1! as Data)
                DispatchQueue.main.async {
                    self.delegate?.downloadImage(image: image!)
                }
            }
        }
        sessionTask.resume()
    }

}
