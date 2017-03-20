//
//  ViewController.swift
//  simple-note
//
//  Created by Danny Colangelo on 3/20/17.
//  Copyright © 2017 Danny Colangelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noteText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.set(noteText.text, forKey: "note")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        let noteObject = UserDefaults.standard.object(forKey: "note")
        if let note = noteObject as? String {
            noteText.text = note
        }
        
    }


}

