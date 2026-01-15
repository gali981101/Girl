//
//  GirlModel.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/14.
//

import SwiftUI

// MARK: - GIRLS DATA MODEL

struct Girl: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var image2: String
    var gradientColors: [Color]
    var description: String
    var Info: [String]
    var movie: String
}
