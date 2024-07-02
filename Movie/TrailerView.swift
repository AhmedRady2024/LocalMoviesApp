//
//  TrailerView.swift
//  Movie
//
//  Created by Ahmed Rady on 25/06/2024.
//

import SwiftUI

struct TrailerView: View {
    @State var Movie : [MovieModles] = decode(file: "movies.json")
    var body: some View {
        NavigationStack{
            
            List{
                ForEach(Movie){
                    item in
                    NavigationLink {
                        TrailerPlayerView(trailer: item.id)
                    } label: {
                        TrailerCellView(movie: item)
                    }
                }
            }.frame(width: 500,height: .infinity)
                .navigationTitle("Movies Trailers")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            Movie.shuffle()
                        } label: {
                            Image(systemName: "shuffle")
                        }
                        
                    }
                }
        }
    }
}

struct TrailerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerView()
    }
}
