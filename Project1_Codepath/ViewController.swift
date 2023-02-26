//
//  ViewController.swift
//  Project1_Codepath
//
//  Created by Chelsea Joe on 2/25/23.
//

import UIKit

struct Info {
    var name: String
    var description: String
    var image: UIImage?
}
class ViewController: UIViewController {
    

    
    let occupation = Info(name:"Occupation", description: "Squidward works as the cashier at the Krusty Krab, a job he usually hates. Squidward is frequently annoyed by SpongeBob's loud and cheerful behavior, but he sometimes sticks up for SpongeBob and sees him as a friend. He can also have a supportive side for his boss on occasion.", image: UIImage(named:"Occupation"))
    
    let hobby = Info(name:"Hobby", description: "One of Squidward's most notable traits is his love for clarinet playing. It is his favorite hobby. Squidward loves it to the point where he often treats it as if it were alive, giving it the nickname Clarey. Squidward even sleeps with it and has a small pillow for it to rest on.", image: UIImage(named:"Hobby"))
    
    let handsome = Info(name:"Handsome", description: "Squidward gets hit in the face by a door, and the resulting alteration to his bone structure causes him to become ridiculously handsome, so much as to attract copious amounts of attention from both men and women. After becoming overwhelmed with his newfound status, he attempts to become normal again, getting hit in the face with the same door several times again.", image: UIImage(named:"Handsome"))
    
    var infoArray: [Info] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infoArray = [occupation, hobby, handsome]

//        print("Here are the different info:")
//        for info in infoArray {
//            print(info)
//        }
        
    }

    @IBAction func didTapInfo(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.info = infoArray[0]
            } else if tappedView.tag == 1 {
                detailViewController.info = infoArray[1]
            } else if tappedView.tag == 2 {
                detailViewController.info = infoArray[2]
            } else {
                print("no Info was tapped, please check your selection.")
            }
        }
    }
}
