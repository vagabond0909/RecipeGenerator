//
//  ViewController.swift
//  RecipeGenerator
//
//  Created by Mohit Katkar on 05/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CustomTableViewCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel = ViewModel()
    private var menus = [Menu]()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMenuItems()
        setUptableView()
    }
    
    func setUptableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func fetchMenuItems() {
        viewModel.fetchMenuItems { [weak self] menu in
            DispatchQueue.main.async {
                self?.menus = menu
                self?.tableView.reloadData()
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menu = menus[indexPath.row]
        
        guard let cell = tableView .dequeueReusableCell(withIdentifier: "CustomCell") as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        cell.itemLabel.text = menu.item
        cell.descriptionLabel.text = menu.description
        cell.delegate = self
        
        return cell
        
    }
    
    func readMoreButtonPressed(cell: UITableViewCell) {
        
        guard let indexpath = tableView.indexPath(for: cell) else {
            return
        }
        let discrption = menus[indexpath.row].description
        
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondaryViewController else {
            return
        }
        
        let newViewModel = SecondVCViewModel(description: discrption)
        secondVC.viewModel = newViewModel
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

