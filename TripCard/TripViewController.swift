//
//  TripViewController.swift
//  TripCard
//
//  Created by Simon Ng on 8/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class TripViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, TripCollectionCellDelegate {
    
    
private	var	trips	=
    [Trip(tripId:	"Wroclaw001",	city:	"Wrocław",	country:	"Poland",	featuredImage:	UIImage(named:	"skytawer"),
         price:	1200,	totalDays:	3, isLiked:	true),
    Trip(tripId:	"Paris001",	city:	"Paris",	country:	"France",	featuredImage:	UIImage(named:	"paris"),
         price:	2000,	totalDays:	5, isLiked:	false),
    Trip(tripId:	"Rome001",	city:	"Rome",	country:	"Italy",	featuredImage: UIImage(named:	"rome"),
    price:	800,	totalDays:	3,	isLiked:	true),
    Trip(tripId:	"Istanbul001", city:	"Istanbul",	country:	"Turkey", featuredImage: UIImage(named:	"istanbul"),
    price:	2200,	totalDays:	10,	isLiked: false),
    Trip(tripId:	"London001",	city:	"London",  country:	"United Kingdom", featuredImage: UIImage(named:	"london"),
    price:	3000,	totalDays:	4,	isLiked: true),
    Trip(tripId:	"Sydney001",	city:	"Sydney",	country:	"Australia",	featuredImage:	UIImage(named:	"sydney"),
    price:	2500,	totalDays:	8,	isLiked: false),
    Trip(tripId:	"Santorini001",	city:	"Santorini",	country:	"Greece",	featuredImage:	UIImage(named:	"santorini"),
    price:	1800,	totalDays:	7,	isLiked: false),
    Trip(tripId:	"NewYork001",	city:	"New York",	country: "United States", featuredImage:	UIImage(named:	"newyork"),
    price:	900, totalDays:	3,	isLiked:true),
    Trip(tripId:	"Kyoto001",	city:	"Kyoto",	country:	"Japan",	featuredImage:	UIImage(named:	"kyoto"),
    price:	1000,	totalDays:	5,	isLiked:	false) ]

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var colectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Apply blurring effect
        backgroundImageView.image = UIImage(named: "cloud")
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        colectionView.backgroundColor=UIColor.clear
        
        if UIScreen.main.bounds.size.height==568.0 {
        let flowLayout = self.colectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.itemSize=CGSize(width: 250.0, height: 330.0)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trips.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TripCollectionViewCell
        cell.cityLabel.text=trips[indexPath.row].city
        cell.countryLabel.text=trips[indexPath.row].country
        cell.totalDeysLabel.text="\(trips[indexPath.row].totalDays) dni"
        cell.imageView.image=trips[indexPath.row].featuredImage
        cell.priceLabel.text = "$\(String(trips[indexPath.row].price))"
        
        cell.isLiked=trips[indexPath.row].isLiked
        cell.delegate=self
        
        
        cell.layer.cornerRadius=4.0

        return cell
    }
    func didLikeButtonPressed(cell: TripCollectionViewCell) {
        if let indexPath=colectionView.indexPath(for: cell){
            trips[indexPath.row].isLiked = trips[indexPath.row].isLiked ? false : true
            cell.isLiked=trips[indexPath.row].isLiked
            print("nacisnieto Like")
        }
    }
}
