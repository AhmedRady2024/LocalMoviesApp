//
//  Decoder.swift
//  Movie
//
//  Created by Ahmed Rady on 25/06/2024.
//
import SwiftUI

func decode <T:Codable>(file : String) -> T {
    //find json file
    guard let url = Bundle.main.url(forResource: file, withExtension: nil) else{
        fatalError("cant find file location")
    }
    //create property to save data
    guard let data = try? Data(contentsOf: url) else {
        fatalError("cant load data")
    }
    //create json decoder
    let decoder = JSONDecoder()
    //create property to save decoded data
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
        fatalError("cant decode data")
    }
    //return decoded data
    return decodedData
}

