//
//  SettingsRowView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: linkDestination ?? "https://github.com/gali981101")!)
                        .foregroundStyle(Color.pink)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(Color.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SettingsRowView(name: "開發者", content: "Gali Lee")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
      SettingsRowView(name: "網站", linkLabel: "iOS Dev.", linkDestination: "https://github.com/gali981101?tab=repositories")
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
  }
}
