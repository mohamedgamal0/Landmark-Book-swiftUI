    //
    //  CircleImageView.swift
    //  Landmark Book swiftUI
    //
    //  Created by mohamed gamal on 3/6/20.
    //  Copyright © 2020 mohamed gamal. All rights reserved.
    //

    import SwiftUI

    struct CircleImageView: View {
        
        var image : Image
        var body: some View {
            
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 15)
            
               
        }
    }

    struct CircleImageView_Previews: PreviewProvider {
        static var previews: some View {
            CircleImageView(image: Image("Paris"))
        }
    }
