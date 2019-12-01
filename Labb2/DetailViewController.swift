//
//  DetailViewController.swift
//  Labb2
//
//  Created by Khalid Elkilany on 2019-12-01.
//  Copyright © 2019 Khalid Elkilany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var XPImage: UIImageView!
        @IBOutlet weak var XPTitel: UILabel!
        @IBOutlet weak var XPMessage: UITextView!
        
        var experience: Experience = Experience(imageName: "", titel: "", message: "")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            XPImage.image = UIImage(named: experience.imageName)
            XPTitel.text = experience.titel
            XPMessage.text = experience.message
        }
    }
