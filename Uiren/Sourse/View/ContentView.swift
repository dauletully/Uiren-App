//
//  ContentView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 13.06.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 2
    var body: some View {
        TabView(selection: $selected) {
            ListView()
                .padding(.horizontal, 16)
                .tag(1)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }
            WordsView()
                .padding(.horizontal, 16)
                .tag(2)
                .tabItem {
                    Image(systemName: "textformat.abc")
                    Text("Words")
                }
            Text("Links")
                .tag(3)
                .tabItem {
                    Image(systemName: "link")
                    Text("Links")
                }
        }
    }
}

#Preview {
    ContentView()
}
