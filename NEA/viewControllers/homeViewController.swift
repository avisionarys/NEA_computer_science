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
    @IBOutlet weak var prUIViw: UIView!
    
  
    @IBOutlet weak var ptTableView: UITableView!
    @IBOutlet weak var mtTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        if let mtView = mtUIView, let prView = prUIViw {
            self.view.bringSubviewToFront(mtView)
            self.view.bringSubviewToFront(prView)
        } else {
            print("values are nil")
        }
    }
    
    @IBAction func SegmentedControll(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(prUIViw)
        case 1:
            self.view.bringSubviewToFront(mtUIView)
            
            
        default:
            break
        }
        
        
        
        
    }
    
    
   

  /*  func updatePersonalRecordReps(exerciseID: String, newRepCount: Int) {
        let db = Firestore.firestore()
        
        db.collection("users").document(UserID).collection("exercises").document(exerciseID)
            .getDocument { (document, error) in
                if let error = error {
                    print("Error retrieving document: \(error)")
                    return
                }
                
                guard let document = document, document.exists,
                      let currentRepsRecord = document.data()?["repCount"] as? Int else {
                    print("Document does not exist or data is missing.")
                    return
                }
                
                if currentRepsRecord < newRepCount {
                    db.collection("users").document(UserID).collection("exercises").document(exerciseID)
                        .updateData(["repCount": newRepCount]) { error in
                            if let error = error {
                                print("Error updating document: \(error)")
                            } else {
                                print("Personal record updated successfully.")
                            }
                        }
                }
            }
    }
    
    
    
*/
    
    
    
}
     


    

