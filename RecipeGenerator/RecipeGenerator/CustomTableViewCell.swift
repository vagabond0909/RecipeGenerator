//
//  CustomTableViewCell.swift
//  RecipeGenerator
//
//  Created by Mohit Katkar on 05/04/22.
//

import UIKit

protocol CustomTableViewCellDelegate: AnyObject {
    func readMoreButtonPressed(cell: UITableViewCell )
}

class CustomTableViewCell: UITableViewCell {
  

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    weak var delegate : CustomTableViewCellDelegate?
    
    @IBAction func readMoreButtonPressed(_ sender: Any) {
        delegate?.readMoreButtonPressed(cell: self)
    
    }
    
}



