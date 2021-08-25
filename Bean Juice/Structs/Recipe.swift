//
//  Recipe.swift
//  Bean Juice
//
//  Created by Iiro Alhonen on 20.03.21.
//  Copyright © 2021 Nifty Tree Studios. All rights reserved.
//

import Foundation

/**
 The user created recipe
 - Remark: to be depricated.
 */
struct Recipe: Codable {
    let name: String
    let brewMethod: MethodName
    let groundSize: String
    let coffeeAmount: String
    let waterAmount: Int
    let brewTime: Int
    let additionalInformation: String?
}

/**
 Downloaded recipe.
 */
struct DownloadedRecipe: Codable {
    /// Recipe name.
    let name: String
    /// URL for an image to be shown.
    let imageURL: String?
    /// Brew method the repice is created for.
    let method: String?
    /// Ground size used.
    let groundSize: String?
    /// Coffee bean used.
    let bean: String?
    /// Ratio used.
    let ratio: Int?
    /// Water amount used.
    let water: Int?
    /// Brew time of the recipe, used in the timer.
    let brewTime: Int?
    /// Additional information to be shown for the user.
    let additionalInformation: String?
    /// Is the user able to edit the recipes values.
    let editable: Bool
}
