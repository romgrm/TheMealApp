//
//  TheMealAppApp.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 29/03/2023.
//

import SwiftUI

@main
struct TheMealApp: App {
    var body: some Scene {
        WindowGroup {
            HomePageView(viewModel: HomePageViewModel(countries))
        }
    }
}

 let countries : [CountriesDto] = [CountriesDto(name: "France"), CountriesDto(name: "Canada"), CountriesDto(name: "Brésil"), CountriesDto(name: "Japon")]
