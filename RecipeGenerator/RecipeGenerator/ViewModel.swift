//
//  ViewModel.swift
//  RecipeGenerator
//
//  Created by Mohit Katkar on 05/04/22.
//

import Foundation

struct ViewModel {
    
    func fetchMenuItems(completionHandler: @escaping ([Menu]) -> Void) {
       
        DispatchQueue.global().asyncAfter(deadline: .now()+1) {
            let menuItems = MenuItemDataGenerator().generateMenuItems(counts: 100)
            completionHandler(menuItems)
        }
        
    }
}
