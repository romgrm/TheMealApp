//
//  FetchingCountriesTests.swift
//  TheMealAppTests
//
//  Created by Romain Gréaume on 07/04/2023.
//
@testable import TheMealApp


import Foundation
import XCTest

class FetchingCountriesTest: XCTestCase {
    
    // fetching countries && sorted in alphabetical order
    
    func testFetchingAllCountriesSortedByAlphabeticalOrder() {
        //arrange
        var countries : [CountriesDto] =  [CountriesDto.fixture(name:"France"), CountriesDto.fixture(name: "Canada")]
        
        //act
        var result = fetchingAllCountriesSortedByAlphabeticalOrder(countries)
        //assert
        XCTAssertEqual(result[0].name,  "Canada")
    }
}
