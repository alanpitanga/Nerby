//
//  NearbyFlowController.swift
//  Nearby
//
//  Created by Alan Pitanga on 10/12/24.
//

import Foundation
import UIKit

class NearbyFlowController {
    private var navigationController: UINavigationController?
    
    public init() {
        
    }
    
    func start() -> UINavigationController? {
        let contentView = SplashView()
        let startViwController = SplashViewController(contentView: contentView)
        self.navigationController = UINavigationController(rootViewController: startViwController)
        
        return navigationController
    }
        
}
