//
//  ChatNavigationToolbar.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatNavigationToolbar: ToolbarContent {
  var body: some ToolbarContent {
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
}

#Preview {
  NavigationStack {
    VStack {
      Text("View")
    }
    .toolbar {
      ChatNavigationToolbar()
    }
  }
}
