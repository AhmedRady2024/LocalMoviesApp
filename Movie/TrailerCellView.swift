//
//  MovieCellView.swift
//  Movie
//
//  Created by Ahmed Rady on 26/06/2024.
//

import SwiftUI

struct TrailerCellView: View { 
    var movie : MovieModles
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            ZStack{
                Image(movie.image)
                    .resizable()
                    .frame(width: 150,height: 200)
                    .cornerRadius(10)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50,height: 50,alignment: .center)
                    .foregroundColor(.accentColor)
                    .shadow(radius: 10)
            }
            VStack(alignment: .leading ,spacing: 35){
                Text(movie.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    
                Text(movie.headline)
                    .font(.footnote)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                HStack{
                    Image(systemName: "timer")
                        .foregroundColor(.accentColor)
                    Text(movie.time)
                    Spacer()
                    Image(systemName: "calendar.circle")
                        .foregroundColor(.accentColor)
                    Text(movie.year)

                }
            }
        }.padding(.horizontal,10)
    }
}

struct TrailerCellView_Previews: PreviewProvider {
    static var Movie :[MovieModles] = decode(file: "movies.json")
    static var previews: some View {
        TrailerCellView(movie: Movie[1]  )
    }
}
