//
//  ViewController.swift
//  AutoLayoutProgramatically
//
//  Created by 박예빈 on 2022/01/12.
//

import UIKit

class ViewController: UIViewController {
    var basicView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        basicView = UIView()
        basicView.backgroundColor = .systemRed
        
        self.view.addSubview(basicView) // 현재 뷰에 해당 뷰를 add 해주는 작업
        
        setAutoLayouts()
        
    }
    
    func setAutoLayouts() {
        basicView.translatesAutoresizingMaskIntoConstraints = false // 코드로 오토레이아웃을 사용하기 위해 설정
        basicView.centerXAnchor.constraint(equalTo:view.centerXAnchor)
            .isActive = true // x축을 기준으로 가운데 정렬
        basicView.centerYAnchor.constraint(equalTo:view.centerYAnchor)
            .isActive = true // y축을 기준으로 가운데 정렬
        basicView.heightAnchor.constraint(equalToConstant: 200)
            .isActive = true // 너비를 200으로 고정
        basicView.widthAnchor.constraint(equalToConstant: 200)
            .isActive = true // 높이를 200으로 고정
    }


}

