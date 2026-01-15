//
//  GirlHeaderView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct GirlHeaderView: View {
    
    // MARK: - PROPERTIES
    
    var girl: Girl
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(edges: .top)
            
            Image(girl.image2)
                .resizable()
                .scaledToFit()
                .frame(width: 440, height: 440)
                .clipped()
                .shadow(color: Color.black.opacity(0.15),
                        radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.9)
        }
        .frame(width: 440, height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 440)) {
    GirlHeaderView(girl: girlsData[0])
        .padding()
        .preferredColorScheme(.dark)
}

