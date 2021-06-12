//
//  PhotoViewController.swift
//  Photo Tapp
//
//  Created by Alexandr on 31.01.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func shareAction(_ sender: UIButton) {
        // save image in library phone
        let activityController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        activityController.completionWithItemsHandler = {_, _, _, _ in
            print("Done")
        }
        present(activityController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
}
