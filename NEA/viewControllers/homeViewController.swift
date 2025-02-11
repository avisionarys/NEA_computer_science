//
//  homeViewController.swift
//  NEA
//
//  Created by CHETAN VISROLIA on 24/01/2025.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth
import Firebase
import FirebaseDatabase

class homeViewController: UIViewController {
    
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var mtUIView: UIView!
    @IBOutlet weak var prUIView: UIView!
    
    @IBOutlet weak var ptTableView: UITableView!
    @IBOutlet weak var mtTableView: UITableView!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        
        if let mtView = mtUIView, let prView = prUIView {
            self.view.bringSubviewToFront(mtView)
            self.view.bringSubviewToFront(prView)
            mtUIView.isHidden = true
            prUIView.isHidden = false
        } else {
            print("values are nil")
        }
       
    }

    
    @IBAction func SegmentedControll(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            prUIView.isHidden = false
            mtUIView.isHidden = true
        case 1:
            prUIView.isHidden = true
            mtUIView.isHidden = false
            
            
        default:
            prUIView.isHidden = false
            mtUIView.isHidden = true
        }
        
        
        
        
    }
    
    
    @IBAction func logOut(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
        
            
        
    }
    

    
    
    
    
    
 
    
    
    
}
     


    

