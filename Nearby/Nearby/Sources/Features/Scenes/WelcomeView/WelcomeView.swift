//
//  WelcomeView.swift
//  Nearby
//
//  Created by Alan Pitanga on 07/01/25.
//

import Foundation
import UIKit

private let logo: UIImageView = {
    let image = UIImageView(image: UIImage(named: "logo"))
    image.contentMode = .scaleAspectFit
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
}()
