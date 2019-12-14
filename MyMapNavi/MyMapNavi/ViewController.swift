//
//  ViewController.swift
//  MyMapNavi
//
//  Created by macconted on 2019/12/13.
//  Copyright © 2019 macconted. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate,MKMapViewDelegate {


    @IBOutlet weak var myMapNav: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        myMapNav.delegate = self
        myMapNav.mapType = .standard
        myMapNav.isZoomEnabled = true
        myMapNav.isScrollEnabled = true
        
        if let coor = myMapNav.userLocation.location?.coordinate{
            myMapNav.setCenter(coor, animated: true)
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        
        myMapNav.mapType = MKMapType.standard
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: locValue, span: span)
        myMapNav.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = locValue
        annotation.title = "WATASHI"
        annotation.subtitle = "current location"
        myMapNav.addAnnotation(annotation)
        
    }
}


/*
 func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
 print("Call delegate, Setting new location")
 if let location = locations.last{
 let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
 let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
 self.myMapNav.setRegion(region, animated: true)
 }
 }
 */

/*
func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let locValue:CLLocationCoordinate2D = manager.location!.coordinate
    
    mapView.mapType = MKMapType.standard
    
    let span = MKCoordinateSpanMake(0.05, 0.05)
    let region = MKCoordinateRegion(center: locValue, span: span)
    mapView.setRegion(region, animated: true)
    
    let annotation = MKPointAnnotation()
    annotation.coordinate = locValue
    annotation.title = "Javed Multani"
    annotation.subtitle = "current location"
    mapView.addAnnotation(annotation)
    
    //centerMap(locValue)
}
*/
