//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Chris Eadie on 14/09/2020.
//  Copyright © 2020 Eadie Designs. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var pictureNumber: Int?
    var totalNumberOfPictures: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(pictureNumber ?? 1) of \(totalNumberOfPictures ?? 1)"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
