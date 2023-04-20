//
//  RecipesByCountry.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 17/04/2023.
//

import SwiftUI

struct MealByCountryView : View {
    
    @ObservedObject var viewModel : MealByCountryViewModel
    
    var body: some View {
        Text(viewModel.countryId)
    }
}


