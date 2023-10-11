//
//  ChatAddPeersListView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatAddPeersListView: View {
  
  @EnvironmentObject private var viewModel: ChatPeersListViewModel
  
  var body: some View {
    NavigationStack {
      List {
        
      }
      .navigationTitle("Add Peers")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
  
}

#Preview {
  ChatAddPeersListView()
}
