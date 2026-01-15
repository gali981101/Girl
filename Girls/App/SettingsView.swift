//
//  SettingsView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/15.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "簡介", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("每位日本成人女優都有自己獨特的風格與魅力，從出道背景、作品類型到個人特色，各有不同。本 App 將相關資訊整理成清楚好讀的內容，讓你可以輕鬆認識、深入了解你感興趣的女優。")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "客製化", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("如果您願意，可以透過切換此框中的開關來重新啟動應用程式。這樣它將啟動引導流程，您將再次看到歡迎畫面。")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("已重啟".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            } else {
                                Text("重啟".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "應用程式", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "開發者", content: "Gali Lee")
                        SettingsRowView(name: "設計師", content: "Gali Lee")
                        SettingsRowView(name: "系統", content: "iOS 26")
                        SettingsRowView(name: "GitHub", linkLabel: "iOS Dev", linkDestination: "https://github.com/gali981101")
                        SettingsRowView(name: "Youtube", linkLabel: "AnimeGamer", linkDestination: "https://youtube.com/@animegamer-p4g6h?si=8JMj2ej4YtzYMFCf")
                        SettingsRowView(name: "SwiftUI", content: "4.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                }
                .navigationBarTitle(Text("設定"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
