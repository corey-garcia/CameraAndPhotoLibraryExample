//
//  ViewController.swift
//  CGPullingCamera
//
//  Created by Apple on 6/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //have this changed to newScreen when you teach this next
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }

    //this was changed to sender: UIButton from sender: any in the
    //instructions
    @IBAction func takePhotoButtonTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    //function for library button tapped, also changed to UIButton instead of any
    @IBAction func photoLibraryButtonTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    //functions which control choosing a photo, and displaying it
    
    @IBOutlet weak var photoTaken: UIImageView!
    
    
    //this errors to be an internal rather than private
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoTaken.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
}

