//
//  FetchingCountries.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 07/04/2023.
//

import Foundation


func fetchingAllCountriesSortedByAlphabeticalOrder(_ countries: [CountriesDto]) -> [CountriesDto] {
    guard countries.isEmpty == false else {return [ ] }
    
    return countries.sorted {$0.name < $1.name}

}
