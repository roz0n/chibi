//
//  ChatPeersList.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatPeersList: View {
  
  var body: some View {
    List {
      ForEach(0...6, id: \.self) { num in
        Text("\(num)")
      }
    }
    .navigationTitle("Peers")
    .navigationBarTitleDisplayMode(.large)
  }
  
}

#Preview {
  NavigationStack {
    ChatPeersList()
  }
}
