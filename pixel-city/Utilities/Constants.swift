//
//  Constants.swift
//  pixel-city
//
//  Created by Rifqi Alfaizi on 25/12/18.
//  Copyright © 2018 Rifqi Alfaizi. All rights reserved.
//

import Foundation

let apiKey = "1efcde4cfb6f5e13537fff567503aa40"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}


