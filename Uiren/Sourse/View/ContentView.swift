//
//  ContentView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 13.06.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 1
    
    @ObservedObject var listVM = ListViewModel()
    @ObservedObject var linkVM = LinkViewModel()
    var body: some View {
        ZStack {
            TabView(selection: $selected) {
                ListView()
                    .environmentObject(listVM)
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
                LinkView()
                    .environmentObject(linkVM)
                    .padding(.horizontal, 16)
                    .tag(3)
                    .tabItem {
                        Image(systemName: "link")
                        Text("Links")
                    }
            }
            if listVM.isShowAddView {
               AddNewWordView()
                    .environmentObject(listVM)
            } else if linkVM.isShowAddLinkView {
                AddNewLinkView()
                    .environmentObject(linkVM)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
