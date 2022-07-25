//
//  SecondVCViewModel.swift
//  RecipeGenerator
//
//  Created by Mohit Katkar on 19/04/22.
//

import Foundation


struct SecondVCViewModel {
    
   private let description: String
    
    
    init(description: String) {
        self.description = description
    }
    
    func getDescription() -> String {
        return description
    }
    
}
