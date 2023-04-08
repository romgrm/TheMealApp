//
//  ContentView.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 29/03/2023.
//

import SwiftUI

struct HomePageView: View {
    
    let viewModel : HomePageViewModel
    
    var body: some View {
        HStack {
            ForEach (viewModel.countries) { country in
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
        HomePageView(viewModel: HomePageViewModel(countries))
    }
}
