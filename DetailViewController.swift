//
//  detailViewController.swift
//  aboutMeV2.0
//
//  Created by Robson, Dylan on 10/3/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController
    {
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var nameOfCategory = String()
    
    
    
    override func viewDidLoad()
    {
        detailTitle.text = nameOfCategory
        if nameOfCategory == "My hobbies" {
            detailDescription.text = "I love to play Football, I've played it every year since I was eight. I love video games, I play lots of different games, but I love strategy games and first person shooters. I love to be outdoors. I like hiking, mountain biking and camping."
            imageView.image = UIImage(named: "mmstance")
        } else if nameOfCategory == "Facts about me" {
            detailDescription.text = "My name is Dylan Robson, I am 18 years old and I'm a senior at Corner Canyon High School. My favorite color is Red. I have 2 sisters, one is 14 at Draper Park and one is 20, going to the U."
            imageView.image = UIImage(named: "konahammock")
        } else if nameOfCategory == "Why I think programming is important" {
            detailDescription.text = "I think programming is important because it allows us to solve problems in our everyday lives with both simple and complex programs. "
        } else {
            detailDescription.text = "I chose programming cause I think it'll help me think critically and be able to better solve real world problems. Additionally, I want to go into some type of software development field in college or possibly computer science. "
        }
       // navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    
    @IBAction func shareButtonPressed(sender: UIBarButtonItem)
    {
        shareTapped()
    }
    
    
    
    func shareTapped()
    {
        
        let string = detailDescription.text
        
        let vc = UIActivityViewController(activityItems: [string!], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        presentViewController(vc, animated: true, completion: nil)
    }
    
    
}
