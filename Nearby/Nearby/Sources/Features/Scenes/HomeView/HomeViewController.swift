//
//  HomeViewController.swift
//  Nearby
//
//  Created by Alan Pitanga on 13/01/25.
//

import Foundation
import UIKit
import MapKit

class HomeViewController: UIViewController {
    private let places: [Place] = []
        private let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
    }
}
