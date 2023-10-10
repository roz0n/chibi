//
//  UIAppearanceConfiguration.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/9/23.
//

import UIKit

struct UIAppearanceConfiguration {
  
  static func configureNavigation() {
    let largeTitleFont = UIFont.preferredFont(forTextStyle: .largeTitle)
    let titleFont = UIFont.preferredFont(forTextStyle: .headline)
    
    let customLargeTitleFont = UIFont(
      descriptor: (largeTitleFont.fontDescriptor.withDesign(.rounded)?.withSymbolicTraits(.traitBold)) ?? largeTitleFont.fontDescriptor,
      size: largeTitleFont.pointSize
    )
    
    let customTitleFont = UIFont(
      descriptor: (titleFont.fontDescriptor.withDesign(.rounded)?.withSymbolicTraits(.traitBold)) ?? titleFont.fontDescriptor,
      size: titleFont.pointSize
    )
    
    let appearance = UINavigationBar.appearance()
    appearance.largeTitleTextAttributes = [.font: customLargeTitleFont]
    appearance.titleTextAttributes = [.font: customTitleFont]
  }
  
}
