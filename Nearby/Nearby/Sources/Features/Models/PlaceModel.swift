//
//  PlaceModels.swift
//  Nearby
//
//  Created by Alan Pitanga on 14/01/25.
//

import Foundation

struct Place: Decodable {
    let id: String
    let name: String
    let description: String
    let coupons: String
    let latitude: Double
    let longitude: Double
    let address: String
    let phone: String
    let cover: String
    let categoryId: String
}
