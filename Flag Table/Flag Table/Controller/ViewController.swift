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
                if content.hasSuffix("@2x.png") {
                    flagPicsArray.append(content)
                }
            }
        } catch {
            print(error)
        }
    }
    
    //number of rows in table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flagPicsArray.count
    }
    
    // what content should be in each cell for the tableview with identifier cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flagImageCell", for: indexPath)
        let flagCellImage = UIImage(named: flagPicsArray[indexPath.row])
        cell.imageView?.image = flagCellImage
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let flagDetailViewController = storyboard?.instantiateViewController(identifier: "FlagImageDetailView") as! FlagImageDetailViewController
        flagDetailViewController.fImage = UIImage(named: flagPicsArray[indexPath.row])
        navigationController?.pushViewController(flagDetailViewController, animated: true)
    }
}

