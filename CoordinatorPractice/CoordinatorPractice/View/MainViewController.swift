//
//  MainViewController.swift
//  CoordinatorPractice
//
//  Created by 박예빈 on 2022/01/10.
//

import UIKit
import RxSwift

class MainViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    weak var pushButton: UIButton!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupLayoutConstraints()
        view.backgroundColor = .systemRed
        
    }
    
    func setupUI() {
        let pushButton = UIButton()
        pushButton.setTitle("화면 전환하기", for: .normal)
        self.pushButton = pushButton
        view.addSubview(pushButton)
    }
    
    func setupLayoutConstraints() {
        self.pushButton.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    }
    


}
