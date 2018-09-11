//
//  SecondViewController.swift
//  madLibs
//
//  Created by Isabell Frischmann on 9/10/18.
//  Copyright © 2018 Isabell Frischmann. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var adjTextField: UITextField!
    @IBOutlet weak var verb1TextField: UITextField!
    @IBOutlet weak var verb2TextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    @IBAction func submitPressed(_ sender: UIButton) {
        print("Submit pressed")
        performSegue(withIdentifier: "unwindToFirstVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! FirstViewController
        destination.data = "We are having a perfectly \(adjTextField.text!) time now. Later we will \(verb1TextField.text!) and \(verb2TextField.text!) in the \(nounTextField.text!)."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
