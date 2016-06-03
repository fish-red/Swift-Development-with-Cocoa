//
//  AppDelegate.swift
//  ControllerBindings
//
//  Created by Alastair McCann on 15/06/2015.
//  Copyright (c) 2015 Alastair McCann. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    // An empty array of Note objects
    var notes = [Note]()

}

