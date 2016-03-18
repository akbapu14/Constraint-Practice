//
//  ViewController.swift
//  interviewApp
//
//  Created by Akilesh Bapu on 2/25/16.
//  Copyright © 2016 justforfun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(self.view.bounds.width)
        print(self.view.bounds.height)

    }
    override func updateViewConstraints() {
        super.updateViewConstraints()
        let redBox = UIView()
        self.view.addSubview(redBox)
        redBox.translatesAutoresizingMaskIntoConstraints = false
        let centerXConstraint = NSLayoutConstraint(item: redBox, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterXWithinMargins, multiplier: 1.0, constant: 0.0)
        let centerYConstraint = NSLayoutConstraint(item: redBox, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterYWithinMargins, multiplier: 1.0, constant: 0.0)
        let heightConstraint = NSLayoutConstraint(item: redBox, attribute: .Height, relatedBy: .Equal,toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0 , constant: 50.0)
        let widthConstraint = NSLayoutConstraint(item: redBox, attribute: .Width, relatedBy: .Equal,toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0 , constant: 50.0)
        let constraintArray: [NSLayoutConstraint] = [centerXConstraint, centerYConstraint, heightConstraint, widthConstraint]
//        let constraintArray: [NSLayoutConstraint] = [heightConstraint, widthConstraint]

        self.view.addConstraints(constraintArray)
        redBox.backgroundColor = UIColor.redColor()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

