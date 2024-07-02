//
//  Test.swift
//  Movie
//
//  Created by Ahmed Rady on 26/06/2024.
//

import SwiftUI

struct MovieCellView: View {
    var movie : MovieModles
    var body: some View {
        VStack(alignment: .center){
            Image(movie.image)
                .renderingMode(.original)
                .resizable()
                .frame(maxWidth: 250,maxHeight: 330)
                .cornerRadius(30)
            VStack(spacing: 10){
                Text(movie.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                HStack(alignment: .center){
                    Image(systemName: "timer")
                        .foregroundColor(.accentColor)
                    Text(movie.time)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.accentColor)
                    Text(movie.rating)
                        .foregroundColor(.gray)
                }.padding([.leading, .bottom, .trailing])
            }
        }.frame(maxWidth: 240,maxHeight: 390)
    }
}

struct MovieCellView_Previews: PreviewProvider {
    static var Movie :[MovieModles] = decode(file: "movies.json")
    static var previews: some View {
        MovieCellView(movie: Movie[5])
    }
}
