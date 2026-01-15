//
//  GirlCardView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct GirlCardView: View {
    
    // MARK: - PROPERTIES
    
    var girl: Girl
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
      ZStack {
        VStack(spacing: 20) {
          
          Image(girl.image)
            .resizable()
            .scaledToFit()
            .frame(height: 450)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .scaleEffect(isAnimating ? 0.85 : 0.6)
          
          Text(girl.title)
            .foregroundColor(Color.white)
            .font(.title)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
          
          Text(girl.headline)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
            .frame(maxWidth: 480)
          
          StartButtonView()
        }
      }
      .onAppear {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
      .background(LinearGradient(gradient: Gradient(colors: girl.gradientColors), startPoint: .top, endPoint: .bottom))
      .cornerRadius(20)
      .padding(.horizontal, 10)
    }
    
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    GirlCardView(girl: girlsData[0])
}
