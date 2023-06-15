//
//  UserCell.swift
//  DemoTableView
//
//  Created by 현명 on 2023/06/15.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet var thumbnail: UIImageView!
    
    
    @IBOutlet var lastName: UILabel!
    
    
    @IBOutlet var firstName: UILabel!
    
    
    @IBOutlet var street: UILabel!
    
    @IBOutlet var cellPhone: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
