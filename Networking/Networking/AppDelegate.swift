//
//  AppDelegate.swift
//  Networking
//
//  Created by Alastair McCann on 23/06/2015.
//  Copyright (c) 2015 Alastair McCann. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    @IBOutlet weak var imageView: NSImageView!
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        
        // PlaceKitten.com URLs work like this:
        // http://placekitten.com/<width>/<height>s
        
        let urlString = "http://placekitten.com/g/100/100"
        
        if let url = NSURL(string:urlString) {
            
            // Using this URL, make an NSURLSesssion and then create a data
            // request task.
            let session = NSURLSession(
                configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
            
            let dataTask = session.dataTaskWithURL(url) {
                (data: NSData?,
                response: NSURLResponse?,
                error: NSError?) in
            
                if data == nil {
                    self.imageView.image = nil
                } else {
                    if let image = NSImage(data: data!) {
                        self.imageView.image = image;
                    }
                }
            }
            
            // Call resume() on the data request to start it
            dataTask.resume()
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

