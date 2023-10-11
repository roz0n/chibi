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
  @Published private(set) var serviceBrowser: MCNearbyServiceBrowser!
  
  // MARK: - Advertise Service
  
  func startAdvertising(id: MCPeerID, channel: String) {
    self.id = id
    self.session = MCSession(peer: id)
    self.advertiserAssistant = MCAdvertiserAssistant(serviceType: channel, discoveryInfo: nil, session: session)
    
    self.session.delegate = self
    self.advertiserAssistant.delegate = self
    self.advertiserAssistant.start()
    
    print("Started advertising to peers...")
  }
  
  func stopAdvertising() {
    advertiserAssistant.stop()
    print("Stopped advertising to peers...")
  }
  
  // MARK: - Browse for Peers
  
  func startBrowsing() {
    serviceBrowser = MCNearbyServiceBrowser(peer: id, serviceType: "chibi")
    serviceBrowser.delegate = self
    serviceBrowser.startBrowsingForPeers()
    
    print("Started browsing for peers...")
  }
  
  func stopBrowsing() {
    serviceBrowser.stopBrowsingForPeers()
    print("Stopped browsing for peers...")
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
  
  func advertiserAssistantWillPresentInvitation(_ advertiserAssistant: MCAdvertiserAssistant) {
    print("Advertiser will present invite now...")
  }
  
  func advertiserAssistantDidDismissInvitation(_ advertiserAssistant: MCAdvertiserAssistant) {
    print("Advertiser invite was rejected!")
  }
  
}

// MARK: - MCNearbyServiceBrowserDelegate

extension PeerConnectivityManager: MCNearbyServiceBrowserDelegate {
  
  func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {
    print("Found peer: \(peerID)")
    // Implement your logic to invite or interact with the found peer
  }
  
  func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
    print("Lost peer: \(peerID)")
    // Implement your logic for when a peer is lost
  }
  
  func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error) {
    print("Did not start browsing: \(error)")
    // Handle the error appropriately
  }
  
}
