//
//  GirlDetailView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct GirlDetailView: View {
    
    // MARK: - PROPERTIES
    
    var girl: Girl
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    GirlHeaderView(girl: girl)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(girl.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(girl.gradientColors[1])
                        
                        Text(girl.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        GirlInfoView(girl: girl)
                        
                        Text("知道更多關於 \(girl.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(girl.gradientColors[1])
                        
                        Text(girl.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView(girl: girl)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 35)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(girl.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    GirlDetailView(girl: girlsData[3])
}
