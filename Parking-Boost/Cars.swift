//
//  Cars.swift
//  Parking-Boost
//
//  Created by Afiq Hamdan on 10/3/18.
//  Copyright © 2018 Afiq Hamdan. All rights reserved.
//

import UIKit
import Foundation

class Cars {
    var plateNumber = ""
    var carName = ""
    
    init(plateNumber: String, carName: String) {
        self.plateNumber = plateNumber
        self.carName = carName
    }
    
    static func createCars() -> [Cars] {
        return [
            Cars(plateNumber: "FD 122", carName: "Honda Civic"),
            Cars(plateNumber: "XCV 999", carName: "Ferrari"),
            Cars(plateNumber: "KL 888", carName: "Lambo Urus"),
        ]
    }
}
