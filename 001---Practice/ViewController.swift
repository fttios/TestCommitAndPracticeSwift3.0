//
//  ViewController.swift
//  001---Practice
//
//  Created by tantan fan on 2018/3/27.
//  Copyright © 2018年 tantan fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name: String?
    var completionCallBack: ((_ res: [String])-> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = "测试"
        
        let btn = UIButton()
        
        btn.setTitle("come on", for: .normal)
        
        btn.setTitleColor(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), for: .normal)
        
        btn.sizeToFit()
        
        btn.center = view.center
        
        btn.addTarget(self, action: #selector(clickedButton(_:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clicked(button:)), for: .touchUpInside)
        view.addSubview(btn)
        
        demo { [weak self] (result) in
            print(result)
            print(self?.name ?? "")
        }
    }
    
    
    @objc func clickedButton(_ button: UIButton) {
        
        let stringName = button.title(for: .normal)
        
        print(stringName ?? "wuzhi")
    }
    
    @objc func clicked(button: UIButton) {
        
    }
    
    func demo(completion: @escaping (_ result: [String])-> ()) {
        completionCallBack = completion
        let set = ["1","2"]
        completion(set)
    }
    
    deinit {
        print("释放")
    }

}



