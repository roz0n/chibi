//
//  ChatAddPeersList.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatAddPeersList: View {
  
  @EnvironmentObject private var viewModel: ChatPeersListViewModel
  
  var body: some View {
    NavigationStack {
      List {
        
      }
      .navigationTitle("Add Peers")
      .navigationBarTitleDisplayMode(.inline)
    }
    .task {
      viewModel.start(displayName: "arnaldo", channelName: "chibi")
    }
  }
  
}

#Preview {
  ChatAddPeersList()
}
