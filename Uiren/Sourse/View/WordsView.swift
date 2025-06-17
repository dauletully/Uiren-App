//
//  WordsView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 17.06.2025.
//

import SwiftUI

struct WordsView: View {
    @State var isShowTranslate = false
    @State var isPressedNext = false
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                VStack(spacing: 23) {
                    VStack(alignment: .leading) {
                        Text("KZ")
                            .font(.system(size: 12, weight: .black))
                            .padding(.bottom, 0)
                        Text("Керемет")
                            .font(.system(size: 36, weight: .black))
                    }
                    ZStack {
                        Text("Превасходно")
                            .font(.system(size: 26, weight: .thin))
                            .opacity(isShowTranslate ? 1 : 0)
                        Button {
                            withAnimation {
                                isShowTranslate.toggle()
                            }

                        } label: {
                            Text("Show translate")
                                .padding(.vertical, 13)
                                .padding(.horizontal, 60)
                                .foregroundStyle(.white)
                                .background(.MAIN)
                                .clipShape(.capsule)
                        }
                        .opacity(isShowTranslate ? 0 : 1)
                    }
                }
                
                Spacer()
                
                Button {
                    //
                }label: {
                    HStack {
                        Text("Next")
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15)
                    }
                    .foregroundStyle(.MAIN)
                }
                Rectangle()
                    .frame(height: 38)
                    .opacity(0)
            }
            .frame(maxWidth: .infinity)
        }
        
    }
}

#Preview {
    ContentView()
}
