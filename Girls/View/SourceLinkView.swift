//
//  SourceLinkView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct SourceLinkView: View {
    
    var girl: Girl
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("深い理解")
                    .foregroundStyle(girl.gradientColors[1])
                Spacer()
                Link("系統設定", destination: URL(string: girl.movie)!)
                    .foregroundStyle(Color(uiColor: .label))
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView(girl: girlsData[0])
        .padding()
}

