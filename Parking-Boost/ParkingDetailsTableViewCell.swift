//
//  ParkingDetailsTableViewCell.swift
//  Parking-Boost
//
//  Created by Afiq Hamdan on 10/5/18.
//  Copyright © 2018 Afiq Hamdan. All rights reserved.
//

import UIKit

class ParkingDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var validDateLabel: UILabel!
    @IBOutlet weak var timeLeftLabel: UILabel!
    @IBOutlet weak var totalPaidLabel: UILabel!
    @IBOutlet weak var ratePerHourLabel: UILabel!
    @IBOutlet weak var parkingLocationLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var statusView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        containerView.layer.cornerRadius = 10;
        containerView.layer.masksToBounds = true;
        containerView.layer.borderWidth = 0.5
        statusView.layer.cornerRadius = 10;
        statusView.layer.masksToBounds = true;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
