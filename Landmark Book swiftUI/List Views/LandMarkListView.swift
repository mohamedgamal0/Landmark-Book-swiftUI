//
//  LandMarkListView.swift
//  Landmark Book swiftUI
//
//  Created by mohamed gamal on 3/6/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import SwiftUI

struct LandMarkListView: View {
    
    var body: some View {
        NavigationView {
            List(landMarkArray){ countries in
                HStack{
                    Image(countries.imageName)
                        .resizable()
                        .frame(width: 60.0, height: 60.0)
                        .padding(10)
NavigationLink(destination:DetailsLandMArkView(chosenLandmark:countries)){
                        Text(countries.name)
                            .font(.subheadline)
                    }
                    
                }
            }
            .navigationBarTitle("Landmark Book")
        }
    }
}

struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView()
    }
}
