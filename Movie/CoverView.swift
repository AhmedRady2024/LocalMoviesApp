//
//  CoverView.swift
//  Movie
//
//  Created by Ahmed Rady on 25/06/2024.
//

import SwiftUI

struct CoverView: View {
    
    let coverPhotos : [CoverModles] = decode(file: "covers.json")
    
    var body: some View {
       
            TabView{
                ForEach(coverPhotos){
                    item in
                    ZStack{
                        Image(item.name)
                            .resizable()
                        VStack{
                            Text((item.text))
                                .foregroundColor(.white)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text(item.data)
                                .foregroundColor(.white)
                                .font(.footnote)
                                .fontWeight(.heavy)
                        }.frame(width: 420 ,height: 380, alignment: .bottomLeading)
                            
                    }
                }
            }.tabViewStyle(PageTabViewStyle())
            .frame(height: 450)
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}
