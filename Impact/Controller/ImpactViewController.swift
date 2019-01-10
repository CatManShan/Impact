//
//  ViewController.swift
//  Impact
//
//  Created by Rawson, Shandler on 1/10/19.
//  Copyright © 2019 CSP. All rights reserved.
//

import UIKit
import MapKit

class ImpactViewController: UIViewController
{

    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBAction func buttonPressed(_ sender: Any)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: -8.7832, longitude: 34.5085)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension MKMapView
{
    public func animatedZoom(zoomRegion: MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations: { self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}

