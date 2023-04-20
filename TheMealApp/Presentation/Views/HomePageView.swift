//
//  ContentView.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 29/03/2023.
//

import SwiftUI

struct HomePageView: View {
    
    @ObservedObject var viewModel = HomePageViewModel() 
    
    var body: some View {
        NavigationStack  {
            if case .onLoading = viewModel.currentState {
                ProgressView()
            }
            if case .onSuccess(let countries) = viewModel.currentState {
                HStack {
                    ForEach (countries) { country in
                        NavigationLink(
                            destination: MealByCountryView(viewModel: MealByCountryViewModel(homePageViewModel: self.viewModel)))
                        {
                            Text(country.name)
                                .foregroundColor(Color.black)
                                .padding(20)
                                .background(Color.red)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                        .simultaneousGesture(TapGesture().onEnded() {
                            print(country.id)
                            viewModel.receiveSelectedCountryIdOnTap(id: country.id)
                        })
                    }}  
            }
        }.onAppear {
            viewModel.fetchCountries()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(viewModel: HomePageViewModel())
    }
}
