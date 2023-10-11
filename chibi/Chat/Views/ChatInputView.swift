//
//  ChatInputView.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import SwiftUI

struct ChatInputView: View {
  var body: some View {
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
            print("Tapped trash")
          } label: {
            Image(systemName: "arrow.up.circle.fill")
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
          print("Tapped draw")
        } label: {
          Image(systemName: "trash.fill")
        }
        .font(.system(size: 20, weight: .bold, design: .rounded))
        
        Spacer()
        
        Button {
          print("Tapped type")
        } label: {
          Image(systemName: "hand.draw.fill")
        }
        .font(.system(size: 20, weight: .bold, design: .rounded))
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300)
    .padding(.horizontal, 20)
  }
}

#Preview {
  VStack {
    VStack {
      Spacer()
      Text("List")
      Spacer()
    }
    ChatInputView()
  }
}
