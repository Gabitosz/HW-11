//
//  ViewController.swift
//  HW-11
//
//  Created by Gabriel Zdravkovici on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bezierBackground = BezierBackgroundView()
        bezierBackground.frame = view.bounds
        view.addSubview(bezierBackground)
    }
}

