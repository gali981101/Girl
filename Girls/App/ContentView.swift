//
//  ContentView.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/14.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var girls: [Girl] = girlsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(girls.shuffled()) { item in
                    NavigationLink(destination: GirlDetailView(girl: item)) {
                        GirlRowView(girl: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("人気女優")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
