//
// PreviewModifier.swift
// monlienvisio
//
// Created by Antonin De Almeida on 24/01/2023.
//
import SwiftUI
struct PreviewModifier: ViewModifier {
  func body(content: Content) -> some View {
    Group {
      content
        .previewDevice("iPhone 14 Pro")
        .previewDisplayName("iPhone")
      content
        .previewDevice("iPad Pro (12.9-inch) (6th generation)")
        .previewDisplayName("iPad")
      content
        .previewDevice("iPhone SE (3rd generation)")
        .previewDisplayName("iPhone SE")
    }
  }
}
