//
//  HomePageTableViewCell.swift
//  The Pound
//
//  Created by Erin Luu on 2017-01-14.
//  Copyright © 2017 Erin Luu. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var petDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
