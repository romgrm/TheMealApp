//
//  HomePageViewModelTests.swift
//  TheMealAppTests
//
//  Created by Romain Gréaume on 08/04/2023.
//

@testable import TheMealApp
import Foundation
import XCTest

class HomePageViewModelTests: XCTestCase {
    
    func testCallGivenCountries( ) {
        //arrange
        let countries : [ CountriesDto] = [ CountriesDto.fixture(name: "Canada"), CountriesDto.fixture(name: "France")]
        
        //act
        let viewModel = HomePageViewModel(countries)
        let countriesSorted = viewModel.countries
        //assert
        
        XCTAssertEqual(countries, countriesSorted)
        
    }
}
