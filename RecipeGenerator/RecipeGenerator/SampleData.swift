//
//  SampleData.swift
//  RecipeGenerator
//
//  Created by Mohit Katkar on 05/04/22.
//

import Foundation

struct Menu {
    let item : String
    let description: String
    
    init(item: String, description: String) {
        self.item = item
        self.description = description
    }
}

struct MenuItemDataGenerator {
    
    private let items = ["PavBhaji", "Masala Dosa", "Tomato Sandwitch", "Fish Fry", "Chiken Pakoda", "Tava Poolav", "PaniPuri", "Bhel", "dabeli", "Anda Bhurji", "Chiken Thali"]

    private let descriptions = ["pav bhaji recipe | easy mumbai style pav bhaji recipe with detailed photo and video recipe. a world-famous fast food dish or perhaps the king of the street food from the western state of maharashtra. the recipe is an amalgamation of vegetables spiced with a unique blend of spices known as pav bhaji masala and served with soft bread roll aka pav.",
                        "hotel masala dosa recipe | bangalore style masala dose | thick masalsa dosa with detailed photo and video recipe. a unique and authentic bangalore style masala dosa recipe prepared with mix of boiled rice and white rice. unlike the traditional masala dosa recipe, the texture of this dosa is thick and dark red in colour. this is because of the dosa batter which is prepared uniquely with a combination of boiled rice, idli rice and urad dal.",
                        "tomato sandwich recipe | tomato cheese sandwich | pav bhaji sandwich with detailed photo and video recipe. an extremely simple and tasty sandwich recipe prepared with pav bhaji stuffing, tomato slices and a generous amount of cheese slices. even though it looks thin and small sandwich, it is loaded with flavours and hence appreciated by all age groups. these tasty sandwiches are ideal for morning breakfast or evening snacks, but can also be extended to lunch boxes and dinner time too.",
                        "zyxbshaajdwAyala also called as bangada is one of the tastiest fish of the whole lot. The buttery flesh makes it a great fish to fry it. Not that the curry made of this fish is less delicious, no matter how you cook this fish, it’s super delicious.One of the most favourite side dish for all the non vegetarians lovers for Sunday lunch would be this fish fry. Try this simple fish fry for Sunday special, and see your family enjoy it.",
                        "This crispy chciken pakora a perfect evening snack dish.This lip-smacking dish a popular non vegetarian food where marinated chicken fried in hot oil.Squeeze lemon juice on top of it and serve it with pudina chutney.",
                        "cschasbkjsancmasn", "shhjdxsb", "xshbxhjsb", "skdjksjcsxs"]
    
    
    func generateMenuItems(counts: Int) -> [Menu] {
        
        var menuItems = [Menu]()
        
        for _ in 0...counts {
            let randomIndexItem = Int.random(in: 0..<items.count)
            let randomIndexDescription = Int.random(in: 0..<descriptions.count)
            let itemName = items[randomIndexItem]
            let itemDescription = descriptions[randomIndexDescription]
            let menu = Menu(item: itemName, description: itemDescription)
            menuItems.append(menu)
        }
        
        return menuItems
    }
}
