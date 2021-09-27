//
//  ViewController.swift
//  Gesture Recognizer Notes
//
//  Created by Daniel Vega on 9/25/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldOutlet.delegate = self
    }

    
    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = UIColor.red
      var tappedLoc = sender.location(in: view)
        labelOutlet.center = tappedLoc
        
      
    }
    
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        imageOutlet.center = pannedLoc
    }
    @IBAction func removeKeyboardTapped(_ sender: UITapGestureRecognizer) {
        textFieldOutlet.resignFirstResponder()
    }
    

}

