//
//  MoviesView.swift
//  Movie
//
//  Created by Ahmed Rady on 25/06/2024.
//

import SwiftUI

struct MovieView: View {
    var Movie : [MovieModles] = decode(file: "movies.json")
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                VStack{
                    CoverView()
                        .frame(height: 450)
                        
                    
                    HStack{
                        Text("Top Movies")
                        Spacer()
                        Text("See All >")
                    }.padding()
                        .foregroundColor(.accentColor)
                        .fontWeight(.heavy)
                        .font(.title2)
                    
                    ScrollView(.horizontal){
                        HStack (spacing: 50){
                            ForEach(Movie){
                                item in
                                NavigationLink(destination: MovieDetailedView(movie: item)){
                                    MovieCellView(movie: item)
                                }
                               

                            }.padding(10) //foreach
                        } //hstack scrollview 2
                    } //scrollview horizontal 1
                    
                    HStack{
                        Text("Top Rated")
                        Spacer()
                        Text("See all >")
                    }.padding()
                        .foregroundColor(.accentColor)
                        .fontWeight(.heavy)
                        .font(.title2)
                    
                    ScrollView(.horizontal){
                        HStack (spacing: 50){
                            ForEach(Movie){
                                item in
                                NavigationLink {
                                    MovieDetailedView(movie: item)
                                } label: {
                                    MovieCellView(movie: item)
                                }
                            }.padding(10) //foreach
                        } //hstack scrollview 2
                    } //scrollview horizontal 2
                } //vstack
            }//scrollview verticail
            .edgesIgnoringSafeArea(.top)
        }//navigtion stack
          
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
