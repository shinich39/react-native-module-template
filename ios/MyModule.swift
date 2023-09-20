//
//  MyModule.swift
//  MyModule
//
//  Created by Icheol Shin on 2023/08/31.
//  Copyright © 2023 Facebook. All rights reserved.
//

import Foundation

@objc(MyModule)
class MyModule: NSObject {
    
  // fix warning "requiresMainQueueSetup"
  // @objc
  // static func requiresMainQueueSetup() -> Bool {
  //   return false
  // }
  
  // private properties
  // private let name = "MyModule"
  
  // Public methods
  @objc
  func getName() -> String {
    return "MyModule"
  }
  
  // callback method
  // @objc
  // func multiply(
  //   _ a: NSNumber,
  //   b: NSNumber,
  //   callback: RCTResponseSenderBlock
  // ) {
  //   callback([NSNull(), NSNumber(value: a.floatValue * b.floatValue)])
  // }

  // promise method
  @objc
  func multiply(
    _ a: NSNumber,
    b: NSNumber,
    resolver resolve: RCTPromiseResolveBlock,
    rejecter reject: RCTPromiseRejectBlock
  ) {
    resolve(NSNumber(value: a.floatValue * b.floatValue))
  }
}
