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
    @IBOutlet weak var tableView: UITableView!
    
    var cars: Cars! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ParkingView", bundle: nil), forCellReuseIdentifier: "ParkingDetailsTableViewCell")
        tableView.backgroundColor = UIColor.clear
//        tableView.backgroundView?.layer.cornerRadius = 10
//        tableView.backgroundView?.isHidden = true
        tableView.backgroundView?.backgroundColor = UIColor.purple
        plateNumberLabel.text = cars.plateNumber
        carNameLabel.text = cars.carName
    }
    
}

extension ParkingUICollectionViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParkingDetailsTableViewCell", for: indexPath) as! ParkingDetailsTableViewCell
        cell.validDateLabel.text = "15 May, 11.30am - 2.00pm"
        cell.timeLeftLabel.text = "02:37:09 left"
        cell.totalPaidLabel.text = "RM 4.60"
        cell.ratePerHourLabel.text = "RM 0.90/Hour"
        cell.parkingLocationLabel.text = "Bangsar DBKL"
        cell.hoursLabel.text = "9am - 5pm"

        return cell
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 229
    }
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        cell.backgroundColor = UIColor.clear
//    }
}
