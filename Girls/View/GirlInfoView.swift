//
//  GirlInfoView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct GirlInfoView: View {
    
    // MARK: - PROPERTIES
    
    var girl: Girl
    let info: [String] = ["身高／體重", "BMI", "三圍", "罩杯", "血型", "出生"]
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("個資") {
                ForEach(0..<info.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(info[item])
                        }
                        .foregroundColor(girl.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(girl.Info[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .tint(girl.gradientColors[1])
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    GirlInfoView(girl: girlsData[1])
        .padding()
}

