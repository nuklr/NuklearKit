//
//  NKContext+create.swift
//  NuklearKit
//
//  Created by Thomas Bonk on 22.09.21.
//  Copyright 2021 Thomas Bonk <thomas@meandmymac.de>
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import CNuklear

public extension NKContext {

  /// Create a new context.
  ///
  /// - Parameters:
  ///   - userFont: A user provided font that shall be used in the context
  /// - Throws: ``NKError``.``contextInitializationError``, if context creation
  ///           failed
  static func create(userFont font: NKUserFont? = nil) throws -> NKContext {
    var ctx = NKContext()
    var initialized: nk_bool

    if var fnt = font {
      initialized = nk_init_default(&ctx, &fnt)
    } else {
      initialized = nk_init_default(&ctx, nil)
    }

    guard initialized != 0 else {
      throw NKError.contextInitializationError
    }

    return ctx
  }
}
