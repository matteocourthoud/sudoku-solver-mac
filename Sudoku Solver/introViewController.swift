//
//  introViewController.swift
//  Sudoku Solver
//
//  Created by Matteo Courthoud on 29/07/16.
//  Copyright © 2016 Matteo Courthoud. All rights reserved.
//

import Cocoa

class introViewController: NSViewController {

    @IBOutlet weak var exitButton: NSButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func quitApp(sender:NSObject) {
        NSApplication.sharedApplication().terminate(self)
    }
    
}
