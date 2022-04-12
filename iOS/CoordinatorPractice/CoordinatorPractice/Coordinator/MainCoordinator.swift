//
//  MainCoordinator.swift
//  CoordinatorPractice
//
//  Created by 박예빈 on 2022/01/10.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainViewController = MainViewController()
        mainViewController.coordinator = self
        navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func goToSecondVC() {
        let secondViewController = SecondViewController()
        secondViewController.coordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
        
    }
}

