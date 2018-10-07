//
//  DataModel.swift
//  Parking-Boost
//
//  Created by Afiq Hamdan on 10/6/18.
//  Copyright © 2018 Afiq Hamdan. All rights reserved.
//

import Foundation

struct Vehicle {
    let licensePlate: String
    var parking: [Parking] = []
}

struct Parking {
    var spot: ParkingSpot
    var start: Date
}

struct ParkingSpot {
    var location: String
    var hourlyCost: Int
}

func makeDate(from dateString: String) -> Date {
    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
    if let date = formatter.date(from: dateString) {
        return date
    } else {
        fatalError("Illegal date string '\(dateString)'")
    }
}


let data = [
    Vehicle(licensePlate: "AHB1234", parking: [
        Parking(spot: ParkingSpot(location: "Bangsar Telawi DBKL", hourlyCost: 1),
                start: makeDate(from: "2018-01-23T03:06:46.232Z")),
        Parking(spot: ParkingSpot(location: "Brickfields DBKL", hourlyCost: 1),
                start: makeDate(from: "2018-03-20T18:43:46.000Z"))
        ]),
    Vehicle(licensePlate: "FUK1337", parking: [
        Parking(spot: ParkingSpot(location: "Ben Franklin Blv.", hourlyCost: 1),
                start: makeDate(from: "2018-01-23T03:06:46.232Z")),
        Parking(spot: ParkingSpot(location: "Place Royale", hourlyCost: 1),
                start: makeDate(from: "2018-03-20T18:43:46.000Z"))
        ]),
    Vehicle(licensePlate: "AZ1890", parking: [])
]
