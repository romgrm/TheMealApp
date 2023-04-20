//
//  CountriesDtoFixture.swift
//  TheMealAppTests
//
//  Created by Romain Gréaume on 08/04/2023.
//

@testable import TheMealApp

import Foundation

extension CountriesDto {
    static func fixture (id: String = "id" ,name : String = "name") -> CountriesDto { CountriesDto(id: id, name: name)}
}
