//
//  ChatPeersListViewModel.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import Foundation
import MultipeerConnectivity

final class ChatPeersListViewModel: ObservableObject {
  
  @Published var manager: PeerConnectivityManager = PeerConnectivityManager()
  @Published var state: ViewState = .empty
  
  func start(displayName: String, channelName: String) {
    manager.startHosting(id: MCPeerID(displayName: displayName), channel: channelName)
  }
  
  func stop() {
    manager.endHosting()
  }
  
}
