//
//  WelcomeView.swift
//  Nearby
//
//  Created by Alan Pitanga on 07/01/25.
//

import Foundation
import UIKit

class WelcomeView: UIView {
    
    private let logoImageView: UIImageView = {
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
    
    private let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Começar", for: .normal)
        button.backgroundColor = Colors.greenBase
        button.setTitleColor(Colors.gray100, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setupTips()
        
        self.addSubview(logoImageView)
        self.addSubview(welcomeLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(tipsStackView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            logoImageView.widthAnchor.constraint(equalToConstant: 48),
            logoImageView.heightAnchor.constraint(equalToConstant: 48),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 8),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 4),
            
            descriptionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            
            tipsStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            tipsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            tipsStackView.trailingAnchor.constraint(equalTo: leadingAnchor, constant: -8),
            
            startButton.topAnchor.constraint(equalTo: tipsStackView.bottomAnchor, constant: 8),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)






            
        ])
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
        
        tipsStackView.addArrangedSubview(tipOne)
        tipsStackView.addArrangedSubview(tipTwo)
        tipsStackView.addArrangedSubview(tipThree)

    }
}

