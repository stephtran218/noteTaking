//
//  ContentView.swift
//  noteTaking
//
//  Created by StudentAM on 4/9/24.
//

import SwiftUI

struct Note {
    var title: String
    var content: String
}

struct ContentView: View {
    
    @State private var notesArray: [Note] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(
                    destination: NewNoteView(notesArray: $notesArray),
                    label: {
                        Text("Add Task")
                            .padding()
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .edgesIgnoringSafeArea(.bottom)
                            .offset(y: 40)
                    }
                )
                .alignmentGuide(.bottom) { _ in
                    UIScreen.main.bounds.height - 40
                }
            }
            .navigationBarTitle("Notes")
        }
    }
}

#Preview {
    ContentView()
}
