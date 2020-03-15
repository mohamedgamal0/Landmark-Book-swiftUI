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
                NavigationLink(destination:DetailsLandMArkView(chosenLandmark:countries)){
                    ListRow(image: Image(countries.imageName), text: Text(countries.name))
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

// push new
