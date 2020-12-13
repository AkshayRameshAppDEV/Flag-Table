//
//  FlagImageDetailViewController.swift
//  Flag Table
//
//  Created by Akshay Ramesh on 12/12/20.
//

import UIKit

class FlagImageDetailViewController: UIViewController {

    @IBOutlet weak var flagImage: UIImageView!
    var fImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let flag = fImage {
            flagImage.image = flag
        }
    }
}
