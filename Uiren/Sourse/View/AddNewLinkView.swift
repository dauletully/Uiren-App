//
//  AddNewLinkView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 18.06.2025.
//

import SwiftUI

struct AddNewLinkView: View {
    @State var linkTitle: String = ""
    @State var link: String = ""
    
    @EnvironmentObject var linkViewModel: LinkViewModel
    var body: some View {
      
        VStack {
            HStack {
                Spacer()
                Text("New link")
                    .padding(.leading, 16)
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                Button {
                    linkViewModel.isShowAddLinkView.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundStyle(.black)
                    
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    TextField("Title", text: $linkTitle)
                }
                .padding(.vertical, 13)
                .padding(.horizontal, 13)
                .background(Color.GRAY)
                .cornerRadius(10)
                
                HStack {
                    TextField("Link", text: $link)
                }
                .padding(.vertical, 13)
                .padding(.horizontal, 13)
                .background(Color.GRAY)
                .cornerRadius(10)
            }
            Spacer()
            
            Button {
                //  
            }label: {
                Text("Save")
            }
            .padding(.vertical, 13)
            .frame(maxWidth: .infinity)
            .background(Color.MAIN)
            .foregroundStyle(.white)
            .clipShape(.capsule)
        }
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
