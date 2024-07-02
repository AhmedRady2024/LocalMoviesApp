//
//  MovieModle.swift
//  Movie
//
//  Created by Ahmed Rady on 26/06/2024.
//

import SwiftUI
struct MovieModles : Codable , Identifiable {
    var id : String
    var name : String
    var headline :String
    var description : String
    var link : String
    var image : String
    var gallery : [String]
    var actor : [String]
    var time : String
    var rating : String
    var year : String
}
