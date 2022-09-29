//
//  Recipe.swift
//  Bean Juice
//
//  Created by Iiro Alhonen on 20.03.21.
//  Copyright © 2021 Nifty Tree Studios. All rights reserved.
//

import Foundation

struct Recipe: Codable {
    let name: String
    let brewMethod: MethodName
    let groundSize: String
    let coffeeAmount: Double
    let waterAmount: Int
    let brewTime: Int
    let additionalInformation: String?
}
