//
//  ViewController.swift
//  ViewcontrollerContainer
//
//  Created by Habeeb Mohamed on 22/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var secondviewcontroller = SecondViewController()
    var thirdviewccontroller = ThirdViewController()
    var alertcontroller = UIAlertController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    
    func setupView() {
        
        let height = self.view.frame.height
        
        alertcontroller = UIAlertController(title: "Enter some message", message: "", preferredStyle: .alert)
        
        alertcontroller.addTextField { textfileds in
            
            textfileds.placeholder = "Enter your value"
            
        }
        
        addChild(secondviewcontroller)
        addChild(thirdviewccontroller)
        addChild(alertcontroller)
        
        self.view.addSubview(secondviewcontroller.view)
        self.view.addSubview(thirdviewccontroller.view)
        self.view.addSubview(alertcontroller.view)
        
        secondviewcontroller.didMove(toParent: self)
        thirdviewccontroller.didMove(toParent: self)
        alertcontroller.didMove(toParent: self)
        
        secondviewcontroller.view.frame = CGRect(x: 0, y: 0, width: 80, height: height)
        thirdviewccontroller.view.frame = CGRect(x: 0, y: 0, width: 80, height: height)
        alertcontroller.view.frame = CGRect(x: 100, y: 100, width: 100, height: 200)
        
        thirdviewccontroller.view.isHidden = true
        alertcontroller.view.isHidden = true
        
    }
    
    
    // MARK: -
    
    @IBAction func tapOnSegment(segment: UISegmentedControl) {
        
        secondviewcontroller.view.isHidden = true
        thirdviewccontroller.view.isHidden = true
        alertcontroller.view.isHidden = true
        
        let index = segment.selectedSegmentIndex
        
        if index == 0 {
            
            secondviewcontroller.view.isHidden = false
            
        } else if index == 1 {
            
            thirdviewccontroller.view.isHidden = false
            
        } else if index == 2 {
            
            let storyboardRef = UIStoryboard(name: "segueBoard", bundle: nil)
            
            let newVC = storyboardRef.instantiateViewController(withIdentifier: "segueview") as! SegueViewController
            
            navigationController?.pushViewController(newVC, animated: true)
            
            // alertcontroller.view.isHidden = false
            
        }
    }
    
}

