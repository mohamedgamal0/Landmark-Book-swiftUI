//
//  LandMarkModel.swift
//  Landmark Book swiftUI
//
//  Created by mohamed gamal on 3/6/20.
//  Copyright © 2020 mohamed gamal. All rights reserved.
//

import SwiftUI
import CoreLocation

struct LandMarkModel :Identifiable{
    
    var id = UUID()
    var name : String
    var imageName : String
    var country : String
    var category : String
    var coordinates : Coordinates
    
    var locationCoordinates:CLLocationCoordinate2D {
        
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates {
    var latitude : Double
    var longitude : Double
}

var LandMark1 = LandMarkModel(name: "Pyramids", imageName: "Egypt", country: "Egypt", category: "Archaeology", coordinates: Coordinates(latitude: 30.0518674, longitude: 31.1528649))

var LandMark2 = LandMarkModel(name: "Amsterdam", imageName: "Amsterdam", country: "netherlands", category: "City", coordinates: Coordinates(latitude: 52.3547459, longitude: 4.763877))

var LandMark3 = LandMarkModel(name: "Eiffel Tower", imageName: "Paris", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.8539241, longitude: 2.2913515))

var LandMark4 = LandMarkModel(name: "Taj Mahal", imageName: "India", country: "India", category: "Archaeology", coordinates: Coordinates(latitude: 27.1589361, longitude: 78.0517393))

var LandMark5 = LandMarkModel(name: "Big Ben", imageName: "london", country: "London", category: "Watch", coordinates: Coordinates(latitude: 51.5007325, longitude:-0.1268141))

var LandMark6 = LandMarkModel(name: "Colosseum", imageName: "Rome", country: "Rome", category: "Archaeology", coordinates: Coordinates(latitude: 41.8902142, longitude: 12.4900422))

var LandMark7 = LandMarkModel(name: "Tokyo", imageName: "Tokyo", country: "japan", category: "technological", coordinates: Coordinates(latitude: 35.6762, longitude: 139.6503))

var LandMark8 = LandMarkModel(name: "Maldives", imageName: "Maldives", country: "Maldives", category: "Coastal", coordinates: Coordinates(latitude: 73.22068, longitude: 3.20277))
  

var landMarkArray = [LandMark1,LandMark2,LandMark3,LandMark4,LandMark5,LandMark6,LandMark7,LandMark8]
