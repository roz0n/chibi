//
//  ContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack(spacing: 0) {
        HStack {
          Text("A")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
        .background(.blue)
        
        HStack {
          Text("B")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300)
        }
        .background(.red)
      }
      .background(.purple)
      .navigationTitle("Room")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

#Preview {
  ContentView()
}
