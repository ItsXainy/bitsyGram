//
//  ViewController.swift
//  bitsyGram
//
//  Created by ZAINAB TAREEN on 2/28/19.
//  Copyright © 2019 ZAINAB TAREEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
    @IBOutlet weak var collectionView: UICollectionView!
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageArray: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
          imagePicker.delegate = self  }

    @IBAction func photoLibaryButton(_ sender: Any) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)}
    
    @IBAction func cameraButon(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        }
        else {
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.imageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        imageView.image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        dismiss(animated: true)
    }
    

}



//TODO:

//set up collectionView
//add delegate and datasource.
//create and subclass collectionViewCell class file (look at collectionViewCell from hackwich)
//add UIObjects and connect outlets to collectionViewCell class.
