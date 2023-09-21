//
//  BezierBackgroundView.swift
//  HW-11
//
//  Created by Gabriel Zdravkovici on 22.09.2023.
//

import Foundation
import UIKit

class BezierBackgroundView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Используйте Core Graphics для рисования кривых Безье на фоне
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(UIColor.purple.cgColor)
        let topRect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height * 0.3)
        context?.fill(topRect)
        
        // Устанавливаем цвет для нижней части фона (черный)
        context?.setFillColor(UIColor.white.cgColor)
        let bottomRect = CGRect(x: 0, y: rect.height * 0.7, width: rect.width, height: rect.height * 0.3)
        context?.fill(bottomRect)
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: rect.height * 0.2))
        path.addCurve(to: CGPoint(x: rect.width, y: 0), controlPoint1: CGPoint(x: rect.width * 0.3, y: rect.height * 0.3), controlPoint2: CGPoint(x: rect.width * 0.7, y: rect.height * 0.3))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.close()
        
        context?.addPath(path.cgPath)
        context?.fillPath()
    }
}
