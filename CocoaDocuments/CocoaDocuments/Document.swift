//
//  Document.swift
//  CocoaDocuments
//
//  Created by Alastair McCann on 19/06/2015.
//  Copyright (c) 2015 Alastair McCann. All rights reserved.
//

import Cocoa

class Document: NSDocument {

    @IBOutlet weak var textField: NSTextField!
    
    var text = ""
    
    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        // The window has loaded, and is ready to display.
        // Take the text that we loaded earlier and display
        // it in the text field

        super.windowControllerDidLoadNib(aController)
        self.textField.stringValue = self.text
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override var windowNibName: String? {
        // Returns the nib file name of the document
        // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this property and override -makeWindowControllers instead.
        return "Document"
    }

    override func dataOfType(typeName: String?,
        error outError: NSErrorPointer) -> NSData? {
        // Convert the contents of the text field into data,
        // and return it

        self.text = self.textField.stringValue

        return self.text.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
    }
    
    override func readFromData(data: NSData?, ofType typeName: String?,
        error outError: NSErrorPointer) -> Bool {
        // Attempt to load a string from the data; if it works, store it
        // in self.text

        if data?.length > 0 {
            let string = NSString(data: data, encoding: NSUTF8StringEncoding)
            self.text = string
        } else {
            self.text = ""
        }

        return true
    }


}

