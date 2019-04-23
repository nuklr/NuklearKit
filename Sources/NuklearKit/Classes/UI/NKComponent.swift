//
//  NKComponent.swift
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
import Nuklear

open class NKComponent: NKContainer {

    // MARK: - Private Properties

    private var context: nk_context!

    
    // MARK: - Public Properties

    /**
     The child controls that are contained in this component.
     */
    public private(set) var children: [NKControl] = []

    public              var frame: NSRect


    // MARK: - Initialization

    public init() {
        self.frame = NSRect(x: 0, y: 0, width: 0, height: 0)
    }

    public init(frame: NSRect) {
        self.frame = frame
    }


    // MARK: - NKContainer

    public func add(control: NKControl) {
        children.append(control)
        control.didMove(to: self)
    }

    public func remove(control: NKControl) {
        if let index = children.firstIndex(where: { $0.id == control.id }) {
            children.remove(at: index)
            control.didRemove(from: self)
        }
    }

    // MARK: - Public API

    /**
     This method is called when the container shall render itself.
     */
    open func render() {
        nk_init_default(&context, nil)

        if nk_begin(
            &context,
            "",
            nk_rect(
                Float(self.frame.minX),
                Float(self.frame.minY),
                Float(self.frame.width),
                Float(self.frame.height)),
            NK_WINDOW_SCROLL_AUTO_HIDE.rawValue) == 0 {
            
            children.forEach { $0.render() }
        }

        nk_end(&context)
    }
}
