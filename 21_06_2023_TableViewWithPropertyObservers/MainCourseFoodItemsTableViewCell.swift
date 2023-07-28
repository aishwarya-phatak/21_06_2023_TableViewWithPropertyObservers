//
//  MainCourseFoodItemsTableViewCell.swift
//  21_06_2023_TableViewWithPropertyObservers
//
//  Created by Vishal Jagtap on 28/07/23.
//

import UIKit

class MainCourseFoodItemsTableViewCell: UITableViewCell {
    @IBOutlet weak var mainCourseTitleLabel: UILabel!
    @IBOutlet weak var mainCoursePriceLabel: UILabel!
    @IBOutlet weak var mainCourseImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
