//
//  DetailViewController.swift
//  Project1_Codepath
//
//  Created by Chelsea Joe on 2/25/23.
//

import UIKit

class DetailViewController: UIViewController {
    var info: Info?

    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var MainImageView: UIImageView!
    
    @IBOutlet weak var DescriptionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let info = info {
            DescriptionText.text = info.description
            MainImageView.image = info.image
//            DescriptionLabel.sizeToFit()

        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
