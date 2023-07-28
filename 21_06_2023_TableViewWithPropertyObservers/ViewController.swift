//
//  ViewController.swift
//  21_06_2023_TableViewWithPropertyObservers
//
//  Created by Vishal Jagtap on 28/07/23.
//

import UIKit

class ViewController: UIViewController {

    private let snacksCellReuseIdentifier = "SnacksFoodItemsTableViewCell"
    private let mainCourseCellResuseIdentifier = "MainCourseFoodItemsTableViewCell"
    
    var uiNibForSnacksCell : UINib = UINib()
    var uiNibForMainCourseCell : UINib = UINib()
    
    var snacks = [
        Snacks(title: "Samosa", price: 20, image: UIImage(named: "smaosaImage")!),
        Snacks(title: "Poha", price: 20, image: UIImage(named: "smaosaImage")!),
        Snacks(title: "Upma", price: 20, image: UIImage(named: "smaosaImage")!)
    ]
    
    var mainCourseDishes = [
    MainCourse(title: "Veg Pulav", price: 100, image: UIImage(named: "pulavImage")!),
    MainCourse(title: "Biryani", price: 160, image: UIImage(named: "pulavImage")!),
    MainCourse(title: "PaneerChilly", price: 160, image: UIImage(named: "pulavImage")!)
    ]
    
    @IBOutlet weak var foodItemsTableView : UITableView!{
        didSet{
            uiNibForSnacksCell = UINib(nibName: snacksCellReuseIdentifier, bundle: nil)
            uiNibForMainCourseCell = UINib(nibName: mainCourseCellResuseIdentifier, bundle: nil)
            
            self.foodItemsTableView.register(uiNibForSnacksCell, forCellReuseIdentifier: snacksCellReuseIdentifier)
            self.foodItemsTableView.register(uiNibForMainCourseCell, forCellReuseIdentifier: mainCourseCellResuseIdentifier)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemsTableView.dataSource = self
        foodItemsTableView.delegate = self
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return snacks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row % 2 == 0){
            let snackTableViewCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: snacksCellReuseIdentifier, for: indexPath) as! SnacksFoodItemsTableViewCell
            
            snackTableViewCell.snacksTitleLabel.text = snacks[indexPath.row].title
            snackTableViewCell.snacksPriceLabel.text = "\(snacks[indexPath.row].price)"
            snackTableViewCell.snacksImageView.image = snacks[indexPath.row].image
            
            return snackTableViewCell
        } else {
            let mainCourseTableViewCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: mainCourseCellResuseIdentifier, for: indexPath) as! MainCourseFoodItemsTableViewCell
            
            mainCourseTableViewCell.mainCourseTitleLabel.text = mainCourseDishes[indexPath.row].title
            mainCourseTableViewCell.mainCoursePriceLabel.text = "\(mainCourseDishes[indexPath.row].price)"
            mainCourseTableViewCell.mainCourseImageView.image = mainCourseDishes[indexPath.row].image
            
            return mainCourseTableViewCell
        }
    }
}


extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200.0
    }
}

