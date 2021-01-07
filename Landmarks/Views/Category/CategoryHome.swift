//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Denis Sakharov on 07.01.2021.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaleEffect()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categoies.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categoies[key]!)
                }
            }
            .navigationTitle("Featured")
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
