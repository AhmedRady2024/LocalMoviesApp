//
//  MapView.swift
//  Movie
//
//  Created by Ahmed Rady on 25/06/2024.
//

import SwiftUI
import MapKit
struct MapView: View {
    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 30.026245, longitude: 31.237068), span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7))
    
    var CinemaLocations : [LocationsModle] = decode(file: "locations.json")
    
    var body: some View {
        
        Map(coordinateRegion: $region,annotationItems: CinemaLocations,annotationContent: {
            item in
            MapAnnotation(coordinate: item.loction) {
                CinemaAnnotition(location: item)
            }
        })
        
        .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
