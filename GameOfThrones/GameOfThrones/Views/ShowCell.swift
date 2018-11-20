//
//  ShowCell.swift
//  GameOfThrones
//
//  Created by Oniel Rosario on 11/19/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ShowCell: UITableViewCell {
 
    @IBOutlet weak var episodeImage: UIImageView!
    
    @IBOutlet weak var episodeName: UILabel!
    @IBOutlet weak var seasonAndEpisode: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
