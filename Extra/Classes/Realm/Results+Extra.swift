//
//  Realm+Extra.swift
//  Pods
//
//  Created by Jean-Charles SORIN on 09/11/2016.
//
//

import Foundation
import RealmSwift

extension Results {
  
  
  /// Convert your Results<T> to a sequence
  ///
  /// - returns: Sequence [T]
  open func toArray() -> [T] {
    return self.map { $0 }
  }
  
  
  /// Safety getter object on your results
  ///
  /// - parameter index: The desired index
  ///
  /// - returns: Your Realm result object at the correct index, nil if out of bound
  open subscript (safe index: Int) -> T? {
    return index < count && index >= 0 ? self[index] : nil
  }
}

extension RealmSwift.List {
  
  
  /// Convert your List<T> to a sequence
  ///
  /// - returns: Sequence [T]
  open func toArray() -> [T] {
    return self.map { $0 }
  }
}