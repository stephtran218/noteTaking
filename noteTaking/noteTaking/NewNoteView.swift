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
                        .border(Color.black)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.1))
                    TextEditor(text: $noteInput)
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(lightGray)
                }
                .navigationBarTitle("New Note")

            }
        }
}

#Preview {
    NewNoteView(notesArray: .constant([]))
}
