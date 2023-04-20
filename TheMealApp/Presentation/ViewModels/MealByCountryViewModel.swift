//
//  RecipesByCountryViewModel.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 16/04/2023.
//

import Foundation
import SwiftUI
import Combine

class MealByCountryViewModel: ObservableObject {
    var homePageViewModel : HomePageViewModel
    private var cancellable: AnyCancellable?
    
    @Published var countryId: String = ""
    
    var meals : [MealDto] = []
    
    init(homePageViewModel: HomePageViewModel) {
        self.homePageViewModel = homePageViewModel
        
        self.cancellable = homePageViewModel.$selectedCountryId
            .map {  $0 ?? ""}
            .assign(to: \.countryId, on: self)
    }
    
    func fetchingMealsByCountry() -> [MealDto] {
        guard  !countryId.isEmpty else { return []}
        print(countryId)
        return [MealDto(idMeal: countryId, strMeal: "Beauf Bourgignon", strMealThumb: "test")]
    }
}
