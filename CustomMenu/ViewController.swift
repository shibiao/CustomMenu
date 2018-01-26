//
//  ViewController.swift
//  CustomMenu
//
//  Created by sycf_ios on 2018/1/26.
//  Copyright © 2018年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func handleButtonEvent(_ sender: NSButton) {
        let theMenu = NSMenu(title: "content menu")
        theMenu.insertItem(withTitle: "Item One", action: #selector(handleMenu(item:)), keyEquivalent: "", at: 0)
        theMenu.insertItem(withTitle: "Item Two", action: #selector(handleMenu(item:)), keyEquivalent: "", at: 1)
        theMenu.insertItem(withTitle: "Item Three", action: #selector(handleMenu(item:)), keyEquivalent: "", at: 2)
//        let frame = sender.frame
//        var origin = sender.superview?.convert(NSPoint(x: frame.origin.x, y: frame.origin.y), to: nil)
        let origin = NSPoint(x: sender.frame.origin.x, y: sender.frame.origin.y - 6)
        let event = NSEvent.mouseEvent(with: .leftMouseDown, location: origin, modifierFlags: .deviceIndependentFlagsMask, timestamp: 0, windowNumber: (sender.window?.windowNumber)!, context: sender.window?.graphicsContext, eventNumber: 0, clickCount: 1, pressure: 1)
        NSMenu.popUpContextMenu(theMenu, with: event!, for: sender, with: NSFont.systemFont(ofSize: 20))
//        NSMenu.popUpContextMenu(theMenu, with: event!, for: view)
//        theMenu.popUp(positioning: nil, at: origin!, in: sender)
//        if let event = NSApp.currentEvent {
//            NSMenu.popUpContextMenu(theMenu, with: event, for: sender, with: NSFont.systemFont(ofSize: 20))
//        }
        
    }
    @objc func handleMenu(item: NSMenuItem) {
        print(item.title)
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

