//
//  TripCollectionViewCell.swift
//  TripCard
//
//  Created by Slawek Kurczewski on 03.03.2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class TripCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cityLabel : UILabel!
    @IBOutlet var countryLabel : UILabel!
    @IBOutlet var totalDeysLabel : UILabel!
    @IBOutlet var priceLabel : UILabel!
    @IBOutlet var likeButton  : UIButton!
    
    var isLiked : Bool = false {
        // obserwator - zmienia ikonę w zależności od polubień
        didSet {
            if isLiked { likeButton.setImage(UIImage(named: "heartfull"), for: .normal)}
            else { likeButton.setImage(UIImage(named: "heart"), for: .normal) }
        }
    }
    
}
