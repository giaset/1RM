//
//  MainViewController.swift
//  1RM
//
//  Created by Gianni Settino on 2016-02-17.
//  Copyright © 2016 Milton and Parc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private let repsLabel = UILabel()
    private let xLabel = UILabel()
    private let weightLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: "f78c58")
        
        repsLabel.text = "10"
        repsLabel.font = UIFont.boldSystemFontOfSize(224)
        view.addSubview(repsLabel)
        
        xLabel.text = "X"
        xLabel.font = UIFont.boldSystemFontOfSize(48)
        view.addSubview(xLabel)
        
        weightLabel.text = "235"
        weightLabel.font = UIFont.boldSystemFontOfSize(224)
        view.addSubview(weightLabel)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        repsLabel.sizeToFit()
        repsLabel.center.x = view.center.x
        repsLabel.center.y = view.bounds.height * 0.25
        
        xLabel.sizeToFit()
        xLabel.center = view.center
        
        weightLabel.sizeToFit()
        weightLabel.center.x = view.center.x
        weightLabel.center.y = view.bounds.height * 0.75
    }
}
