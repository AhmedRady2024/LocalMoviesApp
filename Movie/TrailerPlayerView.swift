//
//  TrailerPlayerView.swift
//  Movie
//
//  Created by Ahmed Rady on 30/06/2024.
//

import SwiftUI
import AVKit

struct TrailerPlayerView: View {
    
    var trailer :String
    
    var body: some View {
        VideoPlayer(player: PlayVideo(filename: trailer, format: "mp4"))
            .frame(height: 720)
            .overlay (
                HStack{
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32,height: 32,alignment: .center)
                    Text(trailer)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }//hstack
                ,alignment: .topLeading
            )//overlay
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(trailer: "men-in-black")
    }
}
