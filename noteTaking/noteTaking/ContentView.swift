//
//  ContentView.swift
//  noteTaking
//
//  Created by StudentAM on 4/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(
                    destination: NewNoteView(),
                    label: {
                        Text("Add Task")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                    }
                )
            }
            .navigationBarTitle("Notes")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
