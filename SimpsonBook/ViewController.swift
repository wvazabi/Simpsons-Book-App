//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Enes Kaya on 9.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var choosenImageView    = UIImage()
    var choosenSimpsonName  : String = ""
    var choosenSimpsonJob   : String = ""
    var mySimpsons = [Simpsons]()
    
  
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        //Simpson class
        
        let homer = Simpsons(name: "Homer Simpson", job: "Driver", image: UIImage(named: "Homer_Simpson")!)
        let lisa = Simpsons(name: "Lisa Simpson", job: "Student", image: UIImage(named: "Lisa_Simpson")!)
        let marge = Simpsons(name: "Marge Simpson", job: "Student", image: UIImage(named: "Marge_Simpson")!)
        let burns = Simpsons(name: "Montgomery Burns", job: "Driver", image: UIImage(named: "Montgomery_Burns")!)
        
        
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(marge)
        mySimpsons.append(burns)
        
        
        navigationItem.title = "Simpson Book"
    
    
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        choosenImageView    = mySimpsons[indexPath.row].image
        choosenSimpsonName  = mySimpsons[indexPath.row].name
        choosenSimpsonJob   = mySimpsons[indexPath.row].job
        performSegue(withIdentifier: "toDetailSegue", sender: nil)
            
            
            
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toDetailSegue"{
                let destinationVC = segue.destination as! detailsVC
                destinationVC.selectedImageView = choosenImageView
                destinationVC.selectedJob       = choosenSimpsonJob
                destinationVC.selectedSimpson   = choosenSimpsonName
                
            }
        }
    
    


}

