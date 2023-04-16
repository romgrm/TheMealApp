//
//  RecipesByCountryViewModel.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 16/04/2023.
//

import Foundation

struct MealByCountryViewModel {
    var meals : [MealDto] = []
    init( countryId : String) {
        self.meals = fetchingMealsByCountry(countryId)
    }
    
    func fetchingMealsByCountry(_ countryId: String) -> [MealDto] {
        return [MealDto(idMeal: "1", strMeal: "Beauf Bourgignon", strMealThumb: "test")]
    }
}
