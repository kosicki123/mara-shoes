//
//  ViewController.swift
//  mara-shoes
//
//  Created by Renan Kosicki on 9/10/15.
//  Copyright © 2015 Renan Kosicki | K-Mobi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func openCashEntries(sender: AnyObject) {
        print("Open Cash Entries")
    }
}

