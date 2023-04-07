//
//  Countries.dto.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 07/04/2023.
//

import Foundation


struct CountriesDto: Comparable, Identifiable{
    var id: String { name}
    
    let name: String
    
            
    init(name: String) {
        self.name = name
    }
    
    static func < (lhs: CountriesDto, rhs: CountriesDto) -> Bool {
        return lhs.name < rhs.name
    }

}
