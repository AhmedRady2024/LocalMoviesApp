//
//  Test.swift
//  Movie
//
//  Created by Ahmed Rady on 02/07/2024.
//

import SwiftUI

struct Test: View {
    //@State private var age = 24
    @State private var count: Int = 1

    var body: some View {
        HStack {
                    Button(action: {
                        count -= 1
                    }) {
                        Text("-")
                            .font(.system(size: 24))
                            .frame(width: 44, height: 44)
                            .foregroundColor(.black)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    Text("\(count)")
                        .font(.system(size: 24))
                        .frame(width: 44, height: 44)
                        .background(Color.clear)
                    Button(action: {
                        count += 1
                    }) {
                        Text("+")
                            .font(.system(size: 24))
                            .frame(width: 44, height: 44)
                            .foregroundColor(.black)
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                }
                .padding()
//        NavigationStack{
//
//            Stepper("check your age",
//                    onIncrement:{ age += 1 } ,
//                    onDecrement: {age -= 1 } )
//            Text("your age is \(age)")
//        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
