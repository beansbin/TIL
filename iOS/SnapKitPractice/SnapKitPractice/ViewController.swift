//
//  ViewController.swift
//  SnapKitPractice
//
//  Created by 박예빈 on 2022/01/12.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let box = UIView()
        box.backgroundColor = .systemGreen
        view.addSubview(box)

        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(20)
            make.left.equalTo(view).offset(20)
            make.bottom.equalTo(view).offset(-20)
            make.right.equalTo(view).offset(-20)
        }
    }


}

