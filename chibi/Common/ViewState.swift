//
//  ViewState.swift
//  chibi
//
//  Created by Arnaldo Rozon on 10/10/23.
//

import Foundation

enum ViewState {
  case empty
  case loading
  case loaded // FIXME: Pass data to this
  case error(Error)
}
