//
//  SecondaryViewController.swift
//  RecipeGenerator
//
//  Created by Mohit Katkar on 05/04/22.
//

import UIKit

class SecondaryViewController: UIViewController {

    @IBOutlet weak var newDescriptionLabel: UILabel!
    
    var viewModel : SecondVCViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        populateUI()
    }
    
    func populateUI() {
        newDescriptionLabel.text = viewModel.getDescription()
    }
    

   
}
