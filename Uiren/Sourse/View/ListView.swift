//
//  ListView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 13.06.2025.
//

import SwiftUI

struct ListView: View {
    @State private var searchText: String = ""
    @EnvironmentObject var listVM: ListViewModel
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 25) {
                    //serach field
                    HStack(spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 15, height: 15)
                        TextField("Search...", text: $searchText)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 20)
                    .background(Color("GRAY"))
                    .cornerRadius(10)
                    
                    
                    VStack(spacing: 20) {
                        CardItem()
                        CardItem()
                        CardItem()
                        CardItem()
                    }
                }
            }
            Button {
                listVM.isShowAddView.toggle()
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 56, height: 56)
                        .foregroundStyle(.MAIN)
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.white)
                    
                }
            } .offset(x: -20, y: -30)
        }
    }
}

struct CardItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading) {
                Text("KZ")
                    .font(.system(size: 12, weight: .black))
                    .padding(.bottom, 7)
                Text("Керемет")
                    .font(.system(size: 18, weight: .black))
                    .padding(.bottom, 2)
                Text("Восхитительно")
                    .font(.system(size: 18, weight: .light))
                    .padding(.bottom, 7)
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Примечание")
                    .padding(.vertical, 7)
                    .font(.system(size: 12, weight: .black))
                    .foregroundStyle(Color("GRAY1"))
                Text("Наречие, обозначающее очень высокую оценку кого-либо или чего-либо, выражающее восхищение и восторг. Это синоним таких слов, как прекрасно, великолепно, удивительно и изумительно. ")
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(Color("GRAY"))
        .cornerRadius(10)
        
    }
}
#Preview {
    ContentView()
}
