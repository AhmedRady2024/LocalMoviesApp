//
//  VideoPlayer.swift
//  Movie
//
//  Created by Ahmed Rady on 30/06/2024.
//

import Foundation
import AVKit

var VideoPlay : AVPlayer?

func PlayVideo(filename:String , format:String) -> AVPlayer{
    if Bundle.main.url(forResource: filename, withExtension: format) != nil {
        VideoPlay = AVPlayer(url:Bundle.main.url(forResource: filename, withExtension: format)!)
        VideoPlay?.play()
    }
    return VideoPlay!
}
