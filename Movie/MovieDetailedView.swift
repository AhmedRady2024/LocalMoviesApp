//
//  DetailedViiew.swift
//  Movie
//
//  Created by Ahmed Rady on 30/06/2024.
//

import SwiftUI

struct MovieDetailedView: View {
    var movie : MovieModles
    @State var isViewed = false
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing: 10){
                Image(movie.image)
                    .resizable()
                    .frame(height: 450)
                
                VStack(alignment: .center){
                    Text(movie.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    
                    HStack{
                        Image(systemName: "timer")
                            .foregroundColor(.accentColor)
                        Text("Duration : \(movie.time) ")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.accentColor)
                        Text("Rating : \(movie.rating)")
                    }//hstack
                    .frame(maxWidth: 290)
                }
                .padding()//first vstack
                
                VStack(alignment: .leading){
                    Text("Description :")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Text(movie.description)
                        .lineLimit(isViewed ? 15 : 3)
                    Button(isViewed ? "Read Less" : "Read More" ) {
                        isViewed.toggle()
                    }.font(.system(size: 15, weight: .semibold))
                }//second vstack
                .padding(.vertical)
                
                VStack(alignment: .leading,spacing: 10){
                    Text("Stars :")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal,10)
                    
                        .foregroundColor(.accentColor)
                    HStack(){
                        ForEach(movie.actor,id: \.self){
                            item in
                            Image(systemName: "star.fill")
                                .foregroundColor(.accentColor)
                            Text(item)
                        }.padding(.horizontal,2)
                            .fontWeight(.bold)
                        Spacer()
                    }//hstack
                } //third vstack
                
                HStack{
                    Text("Gallary :")
                        .foregroundColor(.accentColor)
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }.padding(.horizontal,10)
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(movie.gallery,id: \.self){
                            item in
                            Image(item)
                                .resizable()
                                .frame(width: 400,height: 280)
                                .padding(.horizontal)
                        }
                    }
                }//scrollview
               
                GroupBox{
                    HStack{
                        Image(systemName: "globe")
                        Text("Movie Website:")
                        Group{
                            Link(movie.name, destination: URL(string: movie.link)!)
                            Spacer()
                            Image(systemName: "link")
                        }.foregroundColor(.accentColor)
                    }
                }.padding(.horizontal,10)
                    .cornerRadius(20)
                    Spacer()
                
                
            }//main vstack
        }//main scrolview
        .edgesIgnoringSafeArea(.top)
    }
}

struct MovieDetailedView_Previews: PreviewProvider {
    static var Movie : [MovieModles] = decode(file: "movies.json")
    static var previews: some View {
        MovieDetailedView(movie: Movie[0])
    }
}
