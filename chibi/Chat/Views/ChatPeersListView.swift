//
//  ChatPeersListView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatPeersListView: View {
  
  @State private var isAddPeersPresented: Bool = false
  
  var body: some View {
    List {
      //      ForEach(0...6, id: \.self) { num in
      //        Text("\(num)")
      //      }
    }
    .navigationTitle("Peers")
    .navigationBarTitleDisplayMode(.large)
    .sheet(isPresented: $isAddPeersPresented, content: {
      ChatAddPeersListView()
    })
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button {
          isAddPeersPresented.toggle()
        } label: {
          Image(systemName: "plus")
        }
      }
    }
  }
  
}

#Preview {
  NavigationStack {
    ChatPeersListView()
  }
}
