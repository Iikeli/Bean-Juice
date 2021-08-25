//
//  DiscoverRecipeItem.swift
//  DiscoverRecipeItem
//
//  Created by Iiro Alhonen on 25.08.21.
//  Copyright © 2021 Nifty Tree Studios. All rights reserved.
//

import SwiftUI

struct DiscoverRecipeItem: View {
    let recipe: DownloadedRecipe

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: recipe.imageURL ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.screenWidth - 20, height: 100, alignment: .center)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 70)
            VStack {
                Text(recipe.name)
                Spacer()
            }
        }
        .frame(width: UIScreen.screenWidth - 20, height: 100)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct DiscoverRecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverRecipeItem(
            recipe: DownloadedRecipe(
                name: "Test recipe",
                imageURL: "https://res.cloudinary.com/iiroalhonen/image/upload/v1614519195/The_Swift_Watch_z9j5sp.png",
                method: "V60",
                groundSize: "Medium",
                bean: "Awesome deliciousness",
                ratio: 17,
                water: 550,
                brewTime: 300,
                additionalInformation: "One might need more information",
                editable: false
            )
        )
    }
}
