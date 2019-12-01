//
//  ExperienceTableViewCell.swift
//  Labb2
//
//  Created by Khalid Elkilany on 2019-12-01.
//  Copyright © 2019 Khalid Elkilany. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {

   @IBOutlet weak var XPImage: UIImageView!
        @IBOutlet weak var XPTitel: UILabel!
        @IBOutlet weak var XPMessage: UILabel!
        
        override func awakeFromNib() {
            super.awakeFromNib()
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }

    }
