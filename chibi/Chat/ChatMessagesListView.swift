//
//  ChatMessagesListView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatMessagesListView: View {
  var body: some View {
    ScrollViewReader { proxy in
      List {
        ForEach(0...200, id: \.self) {
          Text("\($0)")
        }
      }
      .listStyle(.inset)
      .onAppear {
        withAnimation(.spring(.smooth)) {
          proxy.scrollTo(200, anchor: .bottom)
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(.gray.opacity(0.15))
      .padding(.bottom, 16)
    }
  }
}

#Preview {
  ChatMessagesListView()
}
