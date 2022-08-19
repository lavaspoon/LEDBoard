//
//  ViewController.swift
//  LEDBoard
//
//  Created by spoon lava on 2022/08/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }


}

