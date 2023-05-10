//
//  TableViewCell.swift
//  LikeButton
//
//  Created by Demo 01 on 06/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var img :UIImageView!
     @IBOutlet var lbl :UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
