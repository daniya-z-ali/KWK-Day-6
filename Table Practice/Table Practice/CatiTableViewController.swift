//
//  CatiTableViewController.swift
//  Table Practice
//
//  Created by Daniya Z Ali on 8/12/19.
//  Copyright © 2019 Daniya Z Ali. All rights reserved.
//

import UIKit

struct Cities{
    var id : Int
    var title : String
    var text : String
    var image : String
}

class CatiTableViewController: UITableViewController {
    var allCities = [
        Cities(id: 1,
               title: "New York City",
                text: "NYC is famous all throughout the world. Many people come to visit.",
                image: "new york city skyline"),
        Cities(id: 2, title: "London",
                      text: "London is in England! There are many historical buildings.",
                      image: "london waterloo"),
        Cities(id: 3,
               title: "Edinburgh",
               text: "Edinburgh is the capital of Scotland. Throughout August, they have a huge music festival and the population of the city doubles.",
               image: "edinburgh castle")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allCities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = allCities[indexPath.row].title
        cell.detailTextLabel?.text = allCities[indexPath.row].text
        cell.imageView?.image = UIImage(named: allCities[indexPath.row].image)

        return cell
        
        func tableView(_tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Section\(section)"
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
