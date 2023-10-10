//
//  ContentView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import SwiftUI

struct ContentView: View {
  
  @ToolbarContentBuilder
  func NavigationToolbar() -> some ToolbarContent {
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
  
  init() {
    UIAppearanceConfiguration.configureNavigation()
  }
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 0) {
        // MARK: - Messages Area
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
        
        // MARK: - Input Area
        VStack {
          // MARK: - Primary Toolbar
          HStack(spacing: 16) {
            Group {
              Button {
                print("Tapped pen")
              } label: {
                Image(systemName: "scribble.variable")
              }
              
              Button {
                print("Tapped eraser")
              } label: {
                Image(systemName: "eraser.fill")
              }
              
              Button {
                print("Tapped color")
              } label: {
                Image(systemName: "paintpalette.fill")
              }
              
              Spacer()
              
              Button {
                print("Tapped trasg")
              } label: {
                Image(systemName: "trash.fill")
              }
            }
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .buttonStyle(.borderless)
          }
          .padding(.top, 16)
          
          // MARK: - Drawing Area
          RoundedRectangle(cornerRadius: 40)
            .fill(Color(UIColor.secondarySystemBackground))
            .padding(.vertical, 12)
          
          // MARK: - Secondary Toolbar
          HStack(spacing: 16) {
            Button {
              print("Tapped pen")
            } label: {
              Image(systemName: "hand.draw.fill")
            }
            .font(.system(size: 20, weight: .bold, design: .rounded))
            
            Spacer()
          }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300)
        .background(.white)
        .padding(.vertical, 8)
        .padding(.horizontal, 20)
      }
      .navigationTitle("Chat Room A")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        NavigationToolbar()
      }
    }
  }
}

#Preview {
  ContentView()
}
