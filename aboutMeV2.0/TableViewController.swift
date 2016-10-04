//
//  ViewController.swift
//  aboutMeV2.0
//
//  Created by Robson, Dylan on 10/3/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let myInfo = ["My hobbies","Facts about me","Why I think programming is important","Why I chose programming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ABOUT ME!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myInfo.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel!.font = UIFont.systemFontOfSize(15, weight: 5)
        cell.textLabel!.textColor = UIColor.greenColor()
        cell.textLabel!.text = myInfo[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("toDetailView", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Pass data to detailViewController
        if segue.identifier == "toDetailView" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let title = myInfo[indexPath.row]
                //if let destination = segue.destination as? detailViewController
                //{
            
                    //destination.title = title
                //}
            }
            
        }
    }
}

