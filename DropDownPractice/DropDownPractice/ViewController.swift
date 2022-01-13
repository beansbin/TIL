//
//  ViewController.swift
//  DropDownPractice
//
//  Created by 박예빈 on 2022/01/13.
//

import UIKit
import DropDown

class ViewController: UIViewController {
    
    var button : UIButton = {
        let btn = UIButton()
        btn.setTitle("다음 뷰로", for: .normal)
        btn.backgroundColor = .red
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        navigationItem.title = "zedd"
        view.addSubview(button)
        button.addTarget(self, action: #selector(toGoNext(_:)), for: .touchUpInside)
        setAutoLayouts()
        
        
        let dropDown = DropDown()
        
        // The view to which the drop down will appear on
        dropDown.anchorView = view // UIView or UIBarButtonItem

        // The list of items to display. Can be changed dynamically
        dropDown.dataSource = ["Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck"]
        dropDown.direction = .bottom
        dropDown.offsetFromWindowBottom = 500
        
        navigationItem.titleView = dropDown
        dropDown.show()
    }
    
    func setAutoLayouts() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo:view.centerXAnchor)
            .isActive = true // x축을 기준으로 가운데 정렬
        button.centerYAnchor.constraint(equalTo:view.centerYAnchor)
            .isActive = true // y축을 기준으로 가운데 정렬
        button.heightAnchor.constraint(equalToConstant: 200)
            .isActive = true // 너비를 200으로 고정
        button.widthAnchor.constraint(equalToConstant: 200)
            .isActive = true // 높이를 200으로 고정
        
    }
    
    @objc func toGoNext(_ sender: UIButton) {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    
    
    
}

