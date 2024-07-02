//
//  LocationModle.swift
//  Movie
//
//  Created by Ahmed Rady on 26/06/2024.
//

import SwiftUI
import MapKit

struct LocationsModle : Codable , Identifiable {
    var id : String
    var name : String
    var image : String
    var latitude : Double
    var longitude : Double
    
    var loction : CLLocationCoordinate2D  {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
