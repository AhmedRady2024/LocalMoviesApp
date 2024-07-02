//
//  CinemaAnnotition.swift
//  Movie
//
//  Created by Ahmed Rady on 01/07/2024.
//

import SwiftUI

struct CinemaAnnotition: View {
    var location : LocationsModle
    @State private var animation : Double = 0.0
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 77,height: 77,alignment: .center)
                
            Circle()
                .stroke(Color.accentColor,lineWidth: 5)
                .frame(width: 75,height: 75,alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 70,height: 70,alignment: .center)
        }.onAppear{
            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                animation = 1
            }
        }
    }
}

struct CinemaAnnotition_Previews: PreviewProvider {
    static var locations :[LocationsModle] = decode(file: "locations.json")
    static var previews: some View {
        CinemaAnnotition(location: locations[0])
    }
}
