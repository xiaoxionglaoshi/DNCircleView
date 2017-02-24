//
//  ViewController.swift
//  CircleViewSwift
//
//  Created by mainone on 16/5/16.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: CircleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChange(_ sender: UISlider) {
        circleView.progress = Double(sender.value)
    }

    
}

