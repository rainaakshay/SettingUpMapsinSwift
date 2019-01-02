//
//  ViewController.swift
//  Maps
//
//  Created by apple on 24/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let office = CLLocationCoordinate2DMake(30.709723, 76.688331)
        let home = CLLocationCoordinate2DMake(30.706195, 76.711286)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.0005, longitudeDelta: 0.0005)
        
       // let x = MKMapItem()
      
        //  x.openInMaps(launchOptions: nil)
        //  let homeRegion = MKCoordinateRegion(center: home, span: span)
          let officeRegion = MKCoordinateRegion(center: office, span: span)
        
         mapView.mapType = MKMapType.satellite
        
       
       //  mapView.setRegion(homeRegion, animated: true)
         mapView.setRegion(officeRegion, animated: true)
        
        let off = MKPointAnnotation()
        off.coordinate = office
        off.title = "Office"
        off.subtitle = "Seraphic Infosolutions"
        mapView.addAnnotation(off)
        
        let hom = MKPointAnnotation()
        hom.coordinate = home
        hom.title = "Home"
        hom.subtitle = "Sector 71"
        mapView.addAnnotation(hom)
        
        
    }


}

