//
//  ViewController.swift
//  Stickman
//
//  Created by Heber Sheffield on 12/2/14.
//  Copyright (c) 2014 Polished Play, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickman: StickmanView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stickman.addWalkAnimation()
        stickman.layer.beginTime = CACurrentMediaTime()
        stickman.layer.speed = 0
    }
    
    @IBAction func timeSliderValueDidChange(sender: UISlider) {
        stickman.layer.timeOffset = NSTimeInterval(sender.value)
    }
}

