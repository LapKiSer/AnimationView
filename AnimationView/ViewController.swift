//
//  ViewController.swift
//  AnimationView
//
//  Created by Кирилл Лапковский on 02.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetValue: UILabel!
    @IBOutlet var curveValue: UILabel!
    @IBOutlet var forceValue: UILabel!
    @IBOutlet var durationValue: UILabel!
    @IBOutlet var delayValue: UILabel!
        
    private var labelValue = LabelValue(preset: "?", curve: "?", force: 0, duration: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springView.layer.cornerRadius = 10
        changingLabelValue()
    }

    @IBAction func runAnimaton(_ sender: SpringButton) {
        if sender.titleLabel?.text == "Run animation" {
            setRandomLabelValue()
        }
        changingLabelValue()
        if delayValue.text == "0" {
            delayValue.text = String(format: "%.0f", springView.delay)
        }
        
        changingAnimationValue()
        
        setRandomLabelValue()
        
        sender.setTitle("Run \(labelValue.preset)", for: .normal)
    }
    private func changingLabelValue() {
        presetValue.text = labelValue.preset
        curveValue.text = labelValue.curve
        forceValue.text = String(format: "%.2f", labelValue.force)
        durationValue.text = String(format: "%.2f", labelValue.duration)
    }
    
    private func changingAnimationValue() {
        springView.animation = labelValue.preset
        springView.curve = labelValue.curve
        springView.force = labelValue.force
        springView.duration = labelValue.duration
        springView.animate()
    }
    
    private func setRandomLabelValue() {
        labelValue.preset = nameAnimations.shuffled().first ?? ""
        labelValue.curve = nameCurves.randomElement() ?? ""
        labelValue.force = CGFloat.random(in: 0...2)
        labelValue.duration = CGFloat.random(in: 0.5...1.5)
    }
    
}

