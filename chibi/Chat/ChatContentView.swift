//
//  ChatContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/11/23.
//

import SwiftUI

struct ChatContentView: View {
  
  @StateObject var viewModel: ChatPeersListViewModel = ChatPeersListViewModel()
  @State var isPeersPresented: Bool = false
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 0) {
        ChatMessagesListView()
        ChatInputView()
      }
      .environmentObject(viewModel)
      .navigationTitle("Room A")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ChatNavigationToolbar(isPeersPresented: $isPeersPresented)
      }
      .navigationDestination(isPresented: $isPeersPresented) {
        ChatPeersListView()
      }
      .task {
        viewModel.start(displayName: "arnaldo", channelName: "chibi")
      }
    }
  }
  
}

#Preview {
  ChatContentView()
}
