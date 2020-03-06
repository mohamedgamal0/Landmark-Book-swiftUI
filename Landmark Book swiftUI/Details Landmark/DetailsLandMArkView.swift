//
//  DetailsLandMArkView.swift
//  Landmark Book swiftUI
//
//  Created by mohamed gamal on 3/6/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import SwiftUI

struct DetailsLandMArkView: View {
    
    var chosenLandmark : LandMarkModel
    var body: some View {
        
        VStack{
            
            MapView(coordinate: chosenLandmark.locationCoordinates)
                .frame(height:UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                .offset(y:UIScreen.main.bounds.height * -0.15)
                .padding(.bottom,UIScreen.main.bounds.height * -0.15)
            
            VStack(alignment:.leading) {
                
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                HStack {
                    
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    Spacer()
                    Text(chosenLandmark.category)
                        .font(.subheadline)
                    
                    
                }
            }.padding()
            
            Spacer()
        }.navigationBarTitle(chosenLandmark.name)
    }
}

struct DetailsLandMArkView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsLandMArkView(chosenLandmark: LandMark5)
    }
}
