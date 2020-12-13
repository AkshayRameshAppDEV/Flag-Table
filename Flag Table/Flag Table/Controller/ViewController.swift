//
//  ViewController.swift
//  Flag Table
//
//  Created by Akshay Ramesh on 12/6/20.
//

import UIKit

class ViewController: UITableViewController {
    var flagPicsArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileManager = FileManager.default // get file manager instance
        let projectPath = Bundle.main.resourcePath! // project path where the app is located
        do {
            let contents = try fileManager.contentsOfDirectory(atPath: projectPath) // contents of the project
            for content in contents {
                if content.hasSuffix(".png") {
                    flagPicsArray.append(content)
                }
            }
        } catch {
            print(error)
        }
        print(flagPicsArray)
    }


}

