//
//  ViewController.swift
//  MyMapView
//
//  Created by macconted on 2019/12/13.
//  Copyright © 2019 macconted. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tokyo, 35.68154, 139.752498
        let latitude = 35.68154
        let longitude = 139.752498
        
        //Skytree, 35.710064, 139.810699
        //let latitude = 35.710064
        //let longitude = 139.810699
        
        //Fuji san, 35.360638, 138.729050
        //let latitude = 35.360638
        //let longitude = 138.729050
        
        //Statue of Liberty
        //let latitude = 40.689247
        //let longitude = -74.044502
        
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        myMap.setCenter(location, animated: true)
        
        var region : MKCoordinateRegion = myMap.region
        
        region.center = location
        
        //zoom values
        region.span.latitudeDelta = 0.2
        region.span.longitudeDelta = 0.2
        
        myMap.setRegion(region, animated: true)
        
        myMap.mapType = MKMapType.standard
        //myMap.mapType = MKMapType.satellite
        //myMap.mapType = MKMapType.hybrid
        
    }
}










