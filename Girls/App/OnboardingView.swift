//
//  OnboardingView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

private let selectedIndexes = [0, 1, 2, 5, 8, 11]

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    var girls: [Girl] = girlsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(selectedIndexes, id: \.self) { index in
                GirlCardView(girl: girls[index])
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .padding(.vertical, 20)
    }
}


#Preview {
    OnboardingView(girls: girlsData)
}
