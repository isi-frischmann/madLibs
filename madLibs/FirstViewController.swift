//
//  ViewController.swift
//  madLibs
//
//  Created by Isabell Frischmann on 9/10/18.
//  Copyright © 2018 Isabell Frischmann. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var madLibLabel: UILabel!
    var data: String = "..."
    
//    to go back to the main page
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    
    
    @IBAction func editPressed(_ sender: UIBarButtonItem) {
        print("Edit pressed")
        performSegue(withIdentifier: "FormSegue", sender: sender)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
        madLibLabel?.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

