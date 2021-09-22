//
//  NKContext+forEachCommand.swift
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

  /// Loop through all commands of the ``nk_context`` and call the given closure
  /// such that the commands are processed.
  ///
  /// - Parameters:
  ///   - process: The closure that shall process the command
  mutating func forEachCommand(process processor: (NKCommand) -> Void) {
    var cmd = nk__begin(&self)

    while cmd != nil {
      processor(cmd!.pointee)
      cmd = nk__next(&self, cmd)
    }
  }
}
