//
//  StateHandler.swift
//  TheMealApp
//
//  Created by Romain Gréaume on 20/04/2023.
//

import Foundation

enum State<T, E> {
    case onLoading
    case onSuccess(data : T)
    case onError(error : E)
}
