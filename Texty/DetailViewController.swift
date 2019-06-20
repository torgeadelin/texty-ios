//
//  DetailViewController.swift
//  Texty
//
//  Created by Torge Adelin on 20/06/2019.
//  Copyright © 2019 Torge Adelin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var text:String = ""
    var masterView:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = text
        textView.becomeFirstResponder()
        self.navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newText = textView.text
        
    }

    func setText(t:String) {
        text = t
        if isViewLoaded {
            textView.text = t
        }
    }
}
