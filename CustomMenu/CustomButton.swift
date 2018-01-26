//
//  CustomButton.swift
//  CustomMenu
//
//  Created by sycf_ios on 2018/1/26.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import Cocoa

class CustomButton: NSButton {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Drawing code here.
    }
    
    override var isHighlighted: Bool {
        didSet {
            wantsLayer = true
            
        }
    }
}
