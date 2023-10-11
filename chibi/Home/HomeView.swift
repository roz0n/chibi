//
//  HomeView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/11/23.
//

import SwiftUI

struct HomeView: View {
  
  @State var isNewChatPresented: Bool = false
  @State var isJoinChatPresented: Bool = false
  
  var body: some View {
    VStack {
      Button {
        isNewChatPresented.toggle()
      } label: {
        Text("New")
      }
      .buttonStyle(.borderedProminent)
      
      Button {
        isJoinChatPresented.toggle()
      } label: {
        Text("Join")
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationDestination(isPresented: $isJoinChatPresented) {
      EmptyView()
    }
    .navigationDestination(isPresented: $isNewChatPresented) {
      ChatContentView()
    }
  }
}

#Preview {
  NavigationStack {
    HomeView()
  }
}
