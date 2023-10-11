//
//  ContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import SwiftUI

struct ContentView: View {
  
  @StateObject var viewModel: ChatPeersListViewModel = ChatPeersListViewModel()
  @State var isPeersPresented: Bool = false
  
  init() {
    UINavigationBarAppearance.enableRoundedFontDesign()
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
        ChatNavigationToolbar(isPeersPresented: $isPeersPresented)
      }
      .navigationDestination(isPresented: $isPeersPresented, destination: {
        ChatPeersList()
          .environmentObject(viewModel)
      })
    }
  }
  
}

#Preview {
  ContentView()
}
