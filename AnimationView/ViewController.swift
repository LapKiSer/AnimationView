//
//  ViewController.swift
//  AnimationView
//
//  Created by Кирилл Лапковский on 02.05.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetValue: UILabel!
    @IBOutlet var curveValue: UILabel!
    @IBOutlet var forceValue: UILabel!
    @IBOutlet var durationValue: UILabel!
    @IBOutlet var delayValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        springView.layer.cornerRadius = 10
    }

    @IBAction func runAnimaton(_ sender: SpringButton) {
    }
    
}

