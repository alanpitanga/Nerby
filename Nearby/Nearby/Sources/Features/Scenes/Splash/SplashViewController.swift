//
//  SplashViewController.swift
//  Nearby
//
//  Created by Alan Pitanga on 11/12/24.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    let contentView: SplashView
    weak var delegate: SplashFlowDelegate?
    
    init (contentView: SplashView, delegate: SplashFlowDelegate) {
        self.contentView = contentView
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        decideFlow()
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = Colors.greenLight
        setupConstraints()
    }
    
    private func setupConstraints() {
        self.setupContentViewController(contentView: contentView)
    }
    
    private func decideFlow() {
        //decidir se o usuário vai para a home ou tela de dicas
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [ weak self] in
            self?.delegate?.decideNavigationFlow()
        }
        
    }
    
}
