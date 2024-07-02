//
//  TrailerDetailedView.swift
//  Movie
//
//  Created by Ahmed Rady on 30/06/2024.
//

import SwiftUI

struct TrailerDetailedView: View { //for api links for trailerss
    var movie :MovieModles
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                HStack(){
                    Image(movie.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle()).frame(width: 250,height: 250)
                       // .aspectRatio(contentMode: .fit)
                    VStack(){
                        Text(movie.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        HStack{
                            Image(systemName: "timer")
                                .foregroundColor(.accentColor)
                            Text(movie.time)
                        }
                    }
                }//hstack
               // .padding(.horizontal,-30)
                
                
                Text("Offical Trailer :")
                    .padding(.vertical,5)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text(movie.headline)
                    .padding(.vertical,5)
                
            }//vstack
            Spacer()
            .navigationTitle("Movie Detailes")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TrailerDetailedView_Previews: PreviewProvider {
    static var Movie : [MovieModles] = decode(file: "movies.json")
    static var previews: some View {
        TrailerDetailedView(movie: Movie[1])
    }
}
