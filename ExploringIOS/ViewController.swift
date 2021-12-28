//
//  ViewController.swift
//  ExploringIOS
//
//  Created by Shyam Shankar on 12/27/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imgView: UIImageView!
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
    
    @IBAction func onTakePicture(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.allowsEditing = true
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    // Implementing UIImagePickerControllerDelegate::imagePickerController
    // onTakePicture configures "self" which implements the delegate to handle camera capture completion.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imgView.contentMode = .scaleAspectFit
            imgView.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
}

