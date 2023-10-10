//
//  ContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import SwiftUI

struct ContentView: View {
  
  @ToolbarContentBuilder
  func NavigationToolbar() -> some ToolbarContent {
    ToolbarItem(placement: .navigationBarTrailing) {
      Button {
        print("Tapped")
      } label: {
        Image(systemName: "gearshape.fill")
          .bold()
      }
      .tint(.accentColor)
      .buttonStyle(.bordered)
    }
  }
  
  init() {
    UIAppearanceConfiguration.configureNavigation()
  }
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 0) {
        ScrollView {
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          Text("A")
            .bold()
          
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.gray.opacity(0.15))
        
        HStack {
          Text("B")
            .bold()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300)
        .background(.white)
      }
      .navigationTitle("Chat Room A")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        NavigationToolbar()
      }
    }
  }
}

#Preview {
  ContentView()
}
