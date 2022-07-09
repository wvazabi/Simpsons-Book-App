//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Enes Kaya on 9.07.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedImageView = UIImage()
    var selectedSimpson : String = ""
    var selectedJob     : String = ""
    var selectedSimpsons : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image  = selectedImageView
        nameLabel.text   = selectedSimpson
        jobLabel.text    = selectedJob
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     
     
     
     
     var selectedSimpsons : Simpsons?
     
     override func viewDidLoad() {
         super.viewDidLoad()

         imageView.image  = selectedSimpsons?.image
         nameLabel.text   = selectedSimpsons?.name
         jobLabel.text    = selectedSimpsons?.job
    }
    */

}
