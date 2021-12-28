//
//  ViewController.swift
//  ExploringIOS
//
//  Created by Shyam Shankar on 12/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSubmit(_ sender: UIButton) {
        if txtInput.text == "" {
            lblOutput.text = "Error: Please enter some text!"
        } else {
            lblOutput.text = txtInput.text
        }        
    }
}

