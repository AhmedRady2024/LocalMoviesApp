//
//  ContentView.swift
//  Movie
//
//  Created by Ahmed Rady on 24/06/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MovieView().tabItem {
                Text("Movies")
                Image(systemName: "house")
            }
            TrailerView().tabItem {
                Text("Trailer")
                Image(systemName: "play.tv")
            }
            MapView().tabItem {
                Text("Map")
                Image(systemName: "map.circle")
            }
            GalleryView().tabItem {
                Text("Gallery")
                Image(systemName: "photo.stack")
            }
            
        }//tabview
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
