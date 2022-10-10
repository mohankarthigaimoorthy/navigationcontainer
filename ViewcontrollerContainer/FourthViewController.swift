//
//  FourthViewController.swift
//  ViewcontrollerContainer
//
//  Created by Habeeb Mohamed on 10/10/22.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Tried pop to viewcontroller
    
    @IBAction func butt(_ sender: UIButton) {
        
        print("button pressed")
        
        let mainviewcont = navigationController!.viewControllers

        for newvc in mainviewcont {

            if newvc is ViewController {

                navigationController?.popToViewController(newvc, animated: true)

            }
        }

    }

}
