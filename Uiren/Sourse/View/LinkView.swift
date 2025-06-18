//
//  LinkView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 17.06.2025.
//

import SwiftUI

struct LinkView: View {
    @EnvironmentObject var linkViewModel: LinkViewModel
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            ScrollView {
                VStack(spacing: 10) {
                    LinkItem(text: "Урок по грамматики языка")
                    LinkItem(text:  "Урок 2: Казахский алфавит: А,Ә,І,Ө,Ң,Ү,Ұ,Қ,Һ")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Button {
                linkViewModel.isShowAddLinkView.toggle()
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
                .offset(x: -20, y: -30)
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        
    }
}

struct LinkItem: View {
    var text: String
    var body: some View {
        HStack {
            HStack(spacing: 15) {
                Image(systemName: "link")
                Text(text)
                    .font(.system(size: 15))
            }
            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.black)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .background(.GRAY)
        .cornerRadius(10)
        .onTapGesture {
            print(1)
        }
    }
}

#Preview {
    ContentView()
}
