//
//  NKContainer.swift
//  NuklearKit
//
//  Created by Thomas Bonk on 12.04.19.
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

/**
 This protocol shall be implemented by classes that act as a comntainer
 for controls.
 */
public protocol NKContainer {

    /**
     Add a control to the container.

     - Parameter control: The control that shall be added
     */
    func add(control: NKControl)

    /**
     Remove a control from the container.

     - Parameter control: The control that shall be removed
     */
    func remove(control: NKControl)
}
