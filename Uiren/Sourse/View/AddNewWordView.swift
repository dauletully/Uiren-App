//
//  AddNewWordView.swift
//  Uiren
//
//  Created by Nurlybaqyt Begaly on 17.06.2025.
//

import SwiftUI

struct AddNewWordView: View {
    @State private var newWord: String = ""
    @State var newWordTranslate: String = ""
    @State var newWordDescription: String = ""
    
    @EnvironmentObject var listVM: ListViewModel
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Text("New word")
                    .font(.system(size: 20, weight: .black))
                    .padding(.leading, 16)
                Spacer()
                Button {
                    listVM.isShowAddView.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundStyle(.black)
                }
            }
            
            VStack(alignment: .leading) {
                Text("KZ")
                    .font(.system(size: 12, weight: .black))
                HStack {
                    TextField("word",text: $newWord)
                }
                .padding(.vertical, 13)
                .padding(.horizontal, 23)
                .background(Color.GRAY)
                .cornerRadius(10)
                
                HStack {
                    TextField("tranlate word", text: $newWordTranslate)
                }
                .padding(.vertical, 13)
                .padding(.horizontal, 23)
                .background(Color.GRAY)
                .cornerRadius(10)
                
                
                Text("Description")
                    .font(.system(size: 14, weight: .black))
                    .padding(.top, 23)
                    .padding(.leading, 23)
                
                HStack {
                    Rectangle()
                        .frame(height: 90)
                        .opacity(0)
                        
                }
                .padding(.vertical, 13)
                .padding(.horizontal, 23)
                .background(Color.GRAY)
                .cornerRadius(10)
                
            }
            Spacer()
            
            Button {
               //
            } label: {
                Text("Save")
                    .padding(.vertical, 13)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(Color.MAIN)
                    .clipShape(.capsule)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(16)
        .background(.white)
    }
}

struct TextView: UIViewRepresentable {
    
    typealias UIViewType = UITextView
    var configuration = { (view: UIViewType) in }
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIViewType {
        UIViewType()
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<Self>) {
        configuration(uiView)
    }
}

#Preview {
    AddNewWordView()
}
