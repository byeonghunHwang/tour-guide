//
//  MainTableViewController.swift
//  TourGuide
//
//  Created by ktds 10 on 2017. 8. 18..
//  Copyright © 2017년 CJ ONS, Inc. All rights reserved.
//

import UIKit

import Foundation

class MainTableViewController: UITableViewController {
    
    var nations:[Nation] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tour1 = Nation(nation: "국내", nationImage: UIImage(named:"korea.jpg")!)
        let tour2 = Nation(nation: "일본", nationImage: UIImage(named:"japan.jpg")!)
        let tour3 = Nation(nation: "중국", nationImage: UIImage(named:"china.jpg")!)
        let tour4 = Nation(nation: "동남아", nationImage: UIImage(named:"east-south-asia.jpg")!)
        let tour5 = Nation(nation: "유럽", nationImage: UIImage(named:"europe.jpg")!)
        let tour6 = Nation(nation: "미국/북중미", nationImage: UIImage(named:"usa.jpg")!)
        let tour7 = Nation(nation: "남미", nationImage: UIImage(named:"south-america.jpg")!)
        let tour8 = Nation(nation: "아프리카", nationImage: UIImage(named:"africa.jpg")!)
        
        self.nations.append(tour1)
        self.nations.append(tour2)
        self.nations.append(tour3)
        self.nations.append(tour4)
        self.nations.append(tour5)
        self.nations.append(tour6)
        self.nations.append(tour7)
        self.nations.append(tour8)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        
        if let nationCell = cell as? NationTableViewCell {
            let nation = self.nations[indexPath.row]
            
            nationCell.nationLabel.text = nation.nation
            nationCell.nationImageView.image = nation.nationImage
            
            return nationCell
        }

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


class NationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nationImageView: UIImageView!
    @IBOutlet weak var nationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}





























