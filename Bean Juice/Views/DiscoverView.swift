//
//  DiscoverView.swift
//  DiscoverView
//
//  Created by Iiro Alhonen on 25.08.21.
//  Copyright © 2021 Nifty Tree Studios. All rights reserved.
//

import SwiftUI

struct DiscoverView: View {
    let recipes: [DownloadedRecipe] = [
        DownloadedRecipe(
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
        ),
        DownloadedRecipe(
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
        ),
        DownloadedRecipe(
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
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(recipes, id: \.name) { recipe in
                    DiscoverItemRow(recipe: recipe)
                }
            }
            .navigationBarTitle("Discover")
        }
    }
}

struct DiscoverItemRow: View {
    let recipe: DownloadedRecipe
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: recipe.imageURL ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: .center)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            Text(recipe.name)
                .font(.title2)
        }
    }
}
