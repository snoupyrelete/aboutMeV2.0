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
        
        cell.textLabel!.text = myInfo[0]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("hi")
    }
}

