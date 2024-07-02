//
//  GalleryView.swift
//  Movie
//
//  Created by Ahmed Rady on 25/06/2024.
//

import SwiftUI

struct GalleryView: View {
    
    @State var layout : [GridItem] = Array(repeating: GridItem(), count: 1)
    @State private var LayoutColoums : Int = 1
    @State var gallrey : [GallaryModle] = decode(file: "Gallery.json")
    @State var SellectedImage : String = ""
    @State var buttonChange : String = "square.grid.2x2"
    
    func SwitchLayout() {
        if LayoutColoums == 1 {
            LayoutColoums = 2
            buttonChange = "square.grid.3x2"
            
        }else if LayoutColoums == 2{
            LayoutColoums = 3
            buttonChange = "square.grid.3x3"
            
        }else if LayoutColoums == 3 {
            LayoutColoums = 4
            buttonChange = "rectangle.grid.1x2"
            
        }else{
            LayoutColoums = 1
            buttonChange = "square.grid.2x2"
        }
        layout = Array(repeating: GridItem(), count: LayoutColoums)
    }
    
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                LazyVGrid(columns: layout){
                    ForEach(gallrey) {
                        item in
                        Image (item.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .onTapGesture {
                                SellectedImage = item.image
                        }
                    }
                }
                .navigationTitle("Movies Gallery")
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            SwitchLayout()
                        } label: {
                            HStack {
                                Text("\(LayoutColoums)")
                                    .font(.system(size: 25))
                                    .frame(width: 20, height: 44)
                                Image(systemName: buttonChange)
                                    .font(.title2)
                            }
                        }
                        
                    }
                }
            }
            
        }
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
