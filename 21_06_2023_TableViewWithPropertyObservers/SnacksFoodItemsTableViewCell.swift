//
//  SnacksFoodItemsTableViewCell.swift
//  21_06_2023_TableViewWithPropertyObservers
//
//  Created by Vishal Jagtap on 28/07/23.
//

import UIKit

class SnacksFoodItemsTableViewCell: UITableViewCell {
    @IBOutlet weak var snacksImageView: UIImageView!
    @IBOutlet weak var snacksTitleLabel: UILabel!
    @IBOutlet weak var snacksPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
