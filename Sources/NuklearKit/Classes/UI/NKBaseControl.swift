//
//  NKBaseControl.swift
//  NuklearKit
//
//  Created by Thomas Bonk on 22.04.19.
//
//  Copyright 2019 Nuklr Development Kit
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

import Foundation

open class NKBaseControl: NKControl {

    // MARK: - Public Propertis

    public private(set) var id = UUID()

    /// This is the container to which this control belongs to
    public private(set) var container: NKContainer? = nil

    // MARK: - NKControl

    public func didMove(to container: NKContainer) {
        self.container = container
    }

    public func didRemove(from container: NKContainer) {
        self.container = nil
    }

    open func render() {

    }
}
