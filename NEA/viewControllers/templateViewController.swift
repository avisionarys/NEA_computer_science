//
//  templateViewController.swift
//  NEA
//
//  Created by CHETAN VISROLIA on 09/02/2025.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseAuth


class templateViewController: UIViewController, UITableViewDelegate , MyProtocol{
    
 
    var Workouts: [String] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segues" {
            if let secondVC = segue.destination as? exercisesViewController {
                secondVC.delegate = self
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exerciseTableView.dataSource = self
        exerciseTableView.delegate = self
    }
    
    
    @IBOutlet weak var exerciseTableView: UITableView!
  
    func addExercise(workout: String){
        Workouts.append(workout)
        exerciseTableView.reloadData()
    }
    
    

}
    
extension templateViewController: UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return Workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReused", for: indexPath)
        cell.textLabel?.text = Workouts[indexPath.row]
        return cell
    }
    
}



    

