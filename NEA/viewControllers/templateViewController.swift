//
//  templateViewController.swift
//  NEA
//
//  Created by CHETAN VISROLIA on 09/02/2025.
//

import UIKit

struct Workout{
    var exericseName: String
}

class templateViewController: UIViewController, UITableViewDelegate {
    
    var Workouts = [Workout]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segues" {
            if let secondVC = segue.destination as? exercisesViewController {
                let controller = exercisesViewController()
                controller.delegate = self
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exerciseTableView.dataSource = self
        exerciseTableView.delegate = self
    }
    
    
    @IBOutlet weak var exerciseTableView: UITableView!
  
 
    
    

}
    
extension templateViewController: UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return Workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReused", for: indexPath)
        cell.textLabel?.text = Workouts[indexPath.row].exericseName
        return cell
    }
    
}

extension templateViewController:AddexerciseDelegate{
    
    func addExercise(workout:Workout){
        self.dismiss(animated: true)
        self.Workouts.append(workout)
        self.exerciseTableView.reloadData()
        
        
    }
    
    
}
    
    
    

