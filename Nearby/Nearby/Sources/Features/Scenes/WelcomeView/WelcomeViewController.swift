//
//  WelcomeViewController.swift
//  Nearby
//
//  Created by Alan Pitanga on 09/01/25.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    let contentView: WelcomeView
    
    init(contentView: WelcomeView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        setupContentViewController(contentView: contentView)
    }
}
