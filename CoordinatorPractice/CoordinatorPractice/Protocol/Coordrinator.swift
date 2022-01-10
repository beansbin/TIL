//
//  Coodrinator.swift
//  CoordinatorPractice
//
//  Created by 박예빈 on 2022/01/10.
//

import UIKit

protocol Coordinator: class {
    var childCoordinator: [Coordinator] { get set } // 자식 코디네이터를 저장하는 변수
    var navigationController: UINavigationController { get set } // 네비게이션 스택을 쌓을 NVC
    
    func start() // 화면 전환 로직 역할 수행
}
