//
//  ViewController.swift
//  LEDBoard
//
//  Created by spoon lava on 2022/08/11.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    
    func changeSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
    

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }
    
    //세그웨이로 화면전환 했기 떄문에 prepare 메서드 오버라이드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController { //다운캐스팅
            settingViewController.delegate = self
        }
    }

}

