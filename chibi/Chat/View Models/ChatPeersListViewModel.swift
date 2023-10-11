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
//  @Published var state: ViewState = .loading
//  
//  enum ViewState {
//    case loading
//    case loaded
//    case browsing
//    case error
//  }
  
  func start(displayName: String, channelName: String) {
    manager.startAdvertising(id: MCPeerID(displayName: displayName), channel: channelName)
  }
  
  func stop() {
    manager.stopAdvertising()
  }
  
}
