//
//  ChatNavigationToolbar.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatNavigationToolbar: ToolbarContent {
  
  @Binding var isPeersPresented: Bool
  
  var body: some ToolbarContent {
    ToolbarItem(placement: .navigationBarTrailing) {
      Button {
        isPeersPresented.toggle()
      } label: {
        Image(systemName: "person.2.fill")
          .font(.system(size: 16))
      }
      .tint(.accentColor)
      .buttonStyle(.borderless)
    }
  }
  
}

#Preview {
  NavigationStack {
    VStack {
      Text("View")
    }
    .toolbar {
      ChatNavigationToolbar(isPeersPresented: .constant(false))
    }
  }
}
