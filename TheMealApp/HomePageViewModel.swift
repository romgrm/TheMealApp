//
//  HomePageViewModel.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 08/04/2023.
//

import Foundation

struct HomePageViewModel {
    let countries : [CountriesDto]
    init(_ countries: [CountriesDto]) {
        self.countries = fetchingAllCountriesSortedByAlphabeticalOrder(countries)
    }
}
