//
//  Trip.swift
//  TripCard
//
//  Created by Slawek Kurczewski on 03.03.2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
struct  Trip {
    var tripId=""
    var city=""
    var country=""
    var featuredImage:UIImage?
    var price:Int
    var totalDays:Int=0
    var isLiked=false
    init(tripId:String, city:String, country:String,featuredImage: UIImage!, price:Int, totalDays: Int, isLiked: Bool){
        self.tripId=tripId
        self.city=city
        self.country=country
        self.featuredImage=featuredImage
        self.price=price
        self.totalDays=totalDays
        self.isLiked=isLiked
    }
}

