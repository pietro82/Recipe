//
//  RecipeViewModelController.swift
//  HelloFresh
//
//  Created by Pietro Santececca on 29/01/17.
//  Copyright © 2017 Tecnojam. All rights reserved.
//

class RecipesListViewModel {
    
    // Variables
    var recipeDataManager = RecipeDataManager()
    fileprivate var recipeViewModelList = [RecipeViewModel]()
    
    // Return number of recipes in the list
    var recipesCount: Int {
        return recipeViewModelList.count
    }
    
    // Return a specific recipe (View Model)
    func recipeViewModel(at index: Int) -> RecipeViewModel {
        return recipeViewModelList[index]
    }
    
    // Load recipes list through the data manager
    func retrieveRecipes() {
        let recipes = recipeDataManager.retrieveRecipes()
        self.recipeViewModelList = recipes.map(){ RecipeViewModel(recipe: $0) }
    }

}
