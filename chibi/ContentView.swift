//
//  ContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import SwiftUI

struct ContentView: View {
  
  init() {
    UIAppearanceConfiguration.configureNavigation()
  }
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 0) {
        ChatMessagesListView()
        ChatInputView()
      }
      .navigationTitle("Room A")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ChatNavigationToolbar()
      }
    }
  }
}

#Preview {
  ContentView()
}
