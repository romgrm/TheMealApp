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
    var countriesTest: [CountriesDto] = []
    
    override func setUp()   {
        super.setUp()
        countriesTest = [ CountriesDto.fixture(id: "3", name: "Brésil"), CountriesDto.fixture(id: "2",name: "Canada"), CountriesDto.fixture(id:"1",name: "France"), CountriesDto.fixture(id: "4", name: "Japon")]
    }
    
    func testReturnCountriesSortedAlphabeticaly( ) {
        let viewModel = HomePageViewModel()
        
        viewModel.fetchCountries()
        
        let countriesSorted = viewModel.countries
        
        XCTAssertEqual(countriesTest, countriesSorted)
        
    }
    
    func testReturnCountryIdWhenTapGestureIsCalled(){
        let id = "1"
        let viewModel = HomePageViewModel( )
        
        viewModel.receiveSelectedCountryIdOnTap(id: id)
        
        let idReturned = viewModel.selectedCountryId
        
        XCTAssertEqual(id, idReturned)
    }
}
