//
//  ContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import SwiftUI

struct ContentView: View {
  
  init() {
    UINavigationBarAppearance.enableRoundedFontDesign()
  }
  
  var body: some View {
    ChatContentView()
  }
  
}

#Preview {
  ContentView()
}
