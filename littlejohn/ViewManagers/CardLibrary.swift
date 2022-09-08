//
//  CardLibrary.swift
//  littlejohn
//
//  Created by Dante Gil-Marin on 8/25/22.
//

import PassKit

class CardLibrary: ObservableObject {
  let library = PKPassLibrary()
  
  @Published var passes: [PKPass]?
  
  init() {
    passes = library.passes()
  }
}
