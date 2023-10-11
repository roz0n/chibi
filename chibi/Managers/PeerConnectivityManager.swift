//
//  PeerConnectivityManager.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import Foundation
import MultipeerConnectivity

final class PeerConnectivityManager: NSObject, ObservableObject {
  
  @Published private(set) var id: MCPeerID!
  @Published private(set) var session: MCSession!
  @Published private(set) var advertiserAssistant: MCAdvertiserAssistant!
  
  func startHosting(id: MCPeerID, channel: String) {
    self.id = id
    self.session = MCSession(peer: id)
    self.advertiserAssistant = MCAdvertiserAssistant(serviceType: channel, discoveryInfo: nil, session: session)
    
    self.session.delegate = self
    self.advertiserAssistant.delegate = self
    self.advertiserAssistant.start()
    
    print("Started advertising to peers...")
  }
  
  func endHosting() {
    advertiserAssistant.stop()
    print("Stopped advertising to peers...")
  }
  
}

// MARK: - MCSessionDelegate

extension PeerConnectivityManager: MCSessionDelegate {
  
  func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
    print("Session peer didChange: \(peerID)\nto: \(state)")
  }
  
  func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
    print("Session did receive: \(data)\nfrom: \(peerID)")
  }
  
  func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
    print("Session did receive: \(stream)\nwithName: \(streamName)\nfromPeer:\(peerID)")
  }
  
  func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
    print("Session didStartReceivingResourceWithName: \(resourceName)\nfromPeer:\(peerID)\nprogress:\(progress)")
  }
  
  func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
    print("Session didFinishReceivingResourceWithName: \(resourceName)\nfromPeer:\(peerID)\nat url:\(String(describing: localURL))\nerror:\(String(describing: error))")
  }
  
}

// MARK: - MCAdvertiserAssistantDelegate

extension PeerConnectivityManager: MCAdvertiserAssistantDelegate {
  
  
  
}
