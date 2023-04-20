//
//  HomePageViewModel.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 08/04/2023.
//

import Foundation


    class HomePageViewModel: ObservableObject{
        
        @Published var currentState: State<[CountriesDto], String> = .onLoading
        @Published var countries : [CountriesDto]
        @Published var selectedCountryId: String?
            
        init() {
            self.countries = []
            self.selectedCountryId = nil
        }
    
        func fetchCountries() {
//            self.countries = fetchingAllCountriesSortedByAlphabeticalOrder(countriesMock)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.currentState = .onSuccess(data: fetchingAllCountriesSortedByAlphabeticalOrder(countriesMock))
            }
            
            
        }
        
        func receiveSelectedCountryIdOnTap( id: String?) {
            selectedCountryId = id
        }
    }

let countriesMock : [CountriesDto] = [CountriesDto(id: "1", name: "France"), CountriesDto(id: "2", name: "Canada"), CountriesDto(id: "3", name: "Brésil"), CountriesDto(id: "4", name: "Japon")]

