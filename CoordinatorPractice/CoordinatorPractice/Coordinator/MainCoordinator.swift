//
//  MainCoordinator.swift
//  CoordinatorPractice
//
//  Created by 박예빈 on 2022/01/10.
//

import Foundation
import UIKit

class MainCoordinator: Coodinator {
    var childCoordinator: [Coodinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainViewController = MainViewController()
        mainViewController.coordinator = self
        navigationController.pushViewController(mainViewController, animated: true)
    }
}
