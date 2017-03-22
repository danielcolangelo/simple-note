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
    @IBOutlet weak var popUp: UIView!
    
    @IBAction func saveBtn(_ sender: Any) {
        let saveNote = String(noteText.text)
        UserDefaults.standard.set(saveNote, forKey: "note")
        if popUp.isHidden == true {
            popUp.isHidden = false
        }
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        if popUp.isHidden == false {
            popUp.isHidden = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let noteObject = UserDefaults.standard.object(forKey: "note")
        if let note = noteObject as? String {
            noteText.text = note
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

