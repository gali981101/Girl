//
//  GirlRowView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct GirlRowView: View {
    
    // MARK: - PROPERTIES
    
    var girl: Girl
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(girl.image2)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(girl.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(girl.headline)
                    .font(.caption)
                    .foregroundColor(Color(.label))
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    GirlRowView(girl: girlsData[2])
        .padding()
}
