//
//  ParkingUICollectionViewCell.swift
//  Parking-Boost
//
//  Created by Afiq Hamdan on 10/3/18.
//  Copyright © 2018 Afiq Hamdan. All rights reserved.
//

import UIKit

class ParkingUICollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var plateNumberLabel: UILabel!
    @IBOutlet weak var carNameLabel: UILabel!
    
    var cars: Cars! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        plateNumberLabel.text = cars.plateNumber
        carNameLabel.text = cars.carName
    }
    
}
