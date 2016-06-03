//
//  AppDelegate.swift
//  StatusItem
//
//  Created by Alastair McCann on 23/06/2015.
//  Copyright (c) 2015 Alastair McCann. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var menu: NSMenu!
    
    var statusItem : NSStatusItem!

    @IBAction func quit(sender: AnyObject) {
        NSApplication.sharedApplication().terminate(nil)
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Make a status bar that has variable length
        // (as opposed to being a standard square size)
        
        // -1 to indicate "variable length"
        statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
        
        // Set the text that appears in the menu bar
        statusItem.title = "My Item"
        
        // Set the menu that should appear when the item is clicked
        statusItem.menu = self.menu
        
        // Set if the item should change color when clicked
        statusItem.highlightMode = true

    }

}

