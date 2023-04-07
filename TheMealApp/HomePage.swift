//
//  ContentView.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 29/03/2023.
//

import SwiftUI

struct HomePageView: View {
    let countries : [CountriesDto] = [CountriesDto(name: "France"), CountriesDto(name: "Canada"), CountriesDto(name: "Brésil"), CountriesDto(name: "Japon")]
    
    var body: some View {
        HStack {
        ForEach (fetchingAllCountriesSortedByAlphabeticalOrder(countries)) { country in
            HStack {
                /*@START_MENU_TOKEN@*/Text(country.name)/*@END_MENU_TOKEN@*/.foregroundColor(Color.black)
            }
                .padding(20)
                .background(Color.red)
                .clipShape(RoundedRectangle(cornerRadius: 5))

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
