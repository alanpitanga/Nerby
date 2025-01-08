//
//  WelcomeView.swift
//  Nearby
//
//  Created by Alan Pitanga on 07/01/25.
//

import Foundation
import UIKit

class WelcomeView: UIView {
    
    private let logo: UIImageView = {
        let image = UIImageView(image: UIImage(named: "logo"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Boas vindas ao Nearby!"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Tenha cupons de vantagem para usar em seus estabelecimentos favoritos."
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private let tipsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 16
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupTips()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setupConstraints()
        self.addSubview(logo)
        self.addSubview(welcomeLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(tipsStackView)
    }
    
    private func setupConstraints() {
        
    }
    
    private func setupTips() {
        let tipOne = TipsView(icon: UIImage(named: "mapIcon") ?? UIImage(),
                              title: "Encontre estabelecimentos",
                              description: "Veja locais perto de você que são parceiros Nearby")
        
        let tipTwo = TipsView(icon: UIImage(named: "qrcode") ?? UIImage(),
                              title: "Ative o cupom com QR Code",
                              description: "Escaneie o código no estabelecimento para usar o benefício")
        
        let tipThree = TipsView(icon: UIImage(named: "ticket") ?? UIImage(),
                              title: "Garanta vantagens perto de você",
                              description: "Ative cupons onde estiver, em diferentes tipos de estabelecimento")
    }
}

