//
//  Note.swift
//  ControllerBindings
//
//  Created by Alastair McCann on 15/06/2015.
//  Copyright (c) 2015 Alastair McCann. All rights reserved.
//

import Cocoa

class Note: NSObject {
    
    // Created date is a constant—it's set upon creation, and never changes
    var created : NSDate = NSDate()
    
    // Edited date defaults to the current date
    var edited : NSDate = NSDate()
    
    // Title is a string that, when changed, updates the edited date
    var title : String = "New Note" {
        didSet {
            edited = NSDate()
        }
    }
    
    // Text is an NSAttributed string that does a similar thing
    var text : NSAttributedString = NSAttributedString(string: "New Note") {
        didSet {
            edited = NSDate()
        }
    }
}
