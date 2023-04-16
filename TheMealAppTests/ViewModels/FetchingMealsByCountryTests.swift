//
//  FetchingRecipesByCountryTests.swift
//  TheMealAppTests
//
//  Created by Romain Gréaume on 16/04/2023.
//

@testable import TheMealApp
import Foundation
import XCTest

class FetchingMealsByCountryTests : XCTestCase{
    func testFetchingRecipesByCountryFromRemoteInitial() {
        
        let _countryId: String = "1"
        let viewModel = MealByCountryViewModel(countryId: _countryId)
        let result = viewModel.meals
        
        XCTAssertEqual(result, [MealDto(idMeal: "1", strMeal: "Beauf Bourgignon", strMealThumb: "test")])
        
    }
}
