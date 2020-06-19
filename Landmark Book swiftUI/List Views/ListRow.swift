//
//  ListRow.swift
//  Landmark Book swiftUI
//
//  Created by mohamed gamal on 3/8/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    
    var image = Image("Paris")
    var text = Text("paris")
    
    var body: some View {
        
        HStack {
            image
                .resizable()
                .frame(width: 80, height: 80, alignment: .leading)
            
            text
                .padding()
                .font(.subheadline)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow().previewLayout(.sizeThatFits)
    }
}
