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
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareButton))
        if let flag = fImage {
            flagImage.image = flag
        }
    }
    
    @objc func shareButton() {
        if let flag = fImage {
            let actionVC = UIActivityViewController(activityItems: [flag], applicationActivities: nil)
            present(actionVC, animated: true, completion: nil)
        }
    }
}
