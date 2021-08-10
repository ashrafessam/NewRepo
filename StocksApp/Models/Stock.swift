//
//  Stock.swift
//  StocksApp
//
//  Created by Ashraf Essam on 27/07/2021.
//

import UIKit

struct Stock: Codable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
