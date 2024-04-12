//
//  NewNoteView.swift
//  noteTaking
//
//  Created by StudentAM on 4/9/24.
//

import SwiftUI

struct NewNoteView: View {
    
    @State private var title: String = ""
    @State private var noteInput: String = ""
    @Binding var notesArray: [Note]
    
    let lightGray = Color(red: 229/255, green: 229/255, blue: 229/255)

        var body: some View {
            NavigationView{
                VStack {
                    TextField("Title", text: $title)
                        .padding()
                        .background(Color.gray.opacity(0.1))
//                        .border(Color.black)
                        .padding(.horizontal)
                        .padding(.top)

                    TextEditor(text: $noteInput)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .foregroundColor(.black)
//                        .border(Color.black)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                .navigationBarTitle("New Note")
            }
            .background(Color.white)
        }
}

#Preview {
    NewNoteView(notesArray: .constant([]))
}
