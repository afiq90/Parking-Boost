//
//  ParkingViewController.swift
//  Parking-Boost
//
//  Created by Afiq Hamdan on 10/3/18.
//  Copyright © 2018 Afiq Hamdan. All rights reserved.
//

import UIKit

class ParkingViewController: UIViewController {
  
    @IBOutlet weak var plateNumberLabel: UILabel!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    private var cars = Cars.createCars()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

}

extension ParkingViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ParkingUICollectionViewCell
        
        cell.cars = self.cars[indexPath.item]
        
        return cell
    }
    
}


