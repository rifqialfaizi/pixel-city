//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Rifqi Alfaizi on 25/12/18.
//  Copyright © 2018 Rifqi Alfaizi. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
