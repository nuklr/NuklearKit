//
//  NKContextCreateSpec.swift
//  NuklearKitTests
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

import Quick
import Nimble

@testable import NuklearKit

final class NKContextCreateSpec: QuickSpec {
  
  override func spec() {
    describe("Creation of a context is successful") {
      var ctx: NKContext?

      it("Create context") {
        ctx = try! NKContext.create()
      }

      it("Check that context has been created") {
        expect(ctx!.memory.size).to(beGreaterThan(0))
      }
    }
  }
}
