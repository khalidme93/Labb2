//
//  SkillsViewController.swift
//  Labb2
//
//  Created by Khalid Elkilany on 2019-12-01.
//  Copyright © 2019 Khalid Elkilany. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var animationImageView: UIImageView!
        var animationImages: [UIImage] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            animationImages = [
                UIImage(named: "run1"),
                UIImage(named: "run2"),
                UIImage(named: "run3"),
                UIImage(named: "run4"),
                UIImage(named: "run5"),
                UIImage(named: "run6")
                ] as! [UIImage]
            
            animationImageView.animationImages = animationImages
            animationImageView.animationDuration = 0.8
            animationImageView.startAnimating()
            
        }
    }
