//
//  ViewController.swift
//  FirebaseCloudMessagingExample
//
//  Created by Appala Raju on 30/06/16.
//  Copyright © 2016 com.crypsis. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase

class ViewController: UIViewController {
    
    var ref:FIRDatabaseReference!;

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        ref =  FIRDatabase.database().reference();
        
        ref.child("users/(user.uid)/lot_id").setValue("1001");
        ref.child("users/(user.uid)/latitude").setValue("17.293929");
        ref.child("users/(user.uid)/longitude").setValue("78.232953");
        ref.child("users/(user.uid)/lot_name").setValue("Ameerpet");
        
        let devView = UIView();
        devView.frame = CGRect(x: 0, y: 0, width: 100, height: 200);
        devView.backgroundColor = UIColor.red;
        devView.center = CGPoint(x: self.view.bounds.size.width/2, y: self.view.bounds.size.height/2);
        
        self.view.addSubview(devView);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

