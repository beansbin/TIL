//
//  ViewController.swift
//  ToastPractice
//
//  Created by 박예빈 on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton = {
        let button = UIButton()
        button.setTitle("토스트 띄우기", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false // 코드로 오토레이아웃을 사용하기 위해 설정
        button.centerXAnchor.constraint(equalTo:view.centerXAnchor)
            .isActive = true // x축을 기준으로 가운데 정렬
        button.centerYAnchor.constraint(equalTo:view.centerYAnchor)
            .isActive = true // y축을 기준으로 가운데 정렬
        button.heightAnchor.constraint(equalToConstant: 200)
            .isActive = true // 너비를 200으로 고정
        button.widthAnchor.constraint(equalToConstant: 200)
            .isActive = true // 높이를 200으로 고정
        button.addTarget(self, action: #selector(showToast(_:)), for: .touchUpInside)
        
    }
    
    @objc func showToast(_ sender: UIButton) {
        let message: String = "토스트 메시지"
        let font: UIFont = UIFont.systemFont(ofSize: 14.0)
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75,
                                               y: self.view.frame.size.height-100,
                                               width: 150,
                                               height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds = true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 10.0,
                       delay: 0.1,
                       options: .curveEaseOut,
                       animations: { toastLabel.alpha = 0.0 },
                       completion: {(isCompleted) in toastLabel.removeFromSuperview()
        })
        
    }

}

