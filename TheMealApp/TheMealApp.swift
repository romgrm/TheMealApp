//
//  TheMealAppApp.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 29/03/2023.
//

import SwiftUI

@main
struct TheMealApp: App {
    let homePageViewModel = HomePageViewModel()
    var body: some Scene {
        Group {
            WindowGroup {
                HomePageView(viewModel: homePageViewModel)
            }
        }
    }
}

