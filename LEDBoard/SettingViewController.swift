//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by spoon lava on 2022/08/19.
//

import UIKit

class SettingViewController : UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapTextColorBtn(_ sender: UIButton) {
        if sender == self.yellowBtn {
            self.changeTextColor(color: .yellow)
        } else if sender == self.purpleBtn {
            self.changeTextColor(color: .purple)
        } else {
            self.changeTextColor(color: .green)
        }
    }
    @IBAction func tapBackGroundColorBtn(_ sender: UIButton) {
        if sender == self.blackBtn {
            self.changeBackgroundColorButton(color: .black)
        } else if sender == self.blueBtn {
            self.changeBackgroundColorButton(color: .blue)
        } else {
            self.changeBackgroundColorButton(color: .orange)
        }
    }
    @IBAction func tapSaveBtn(_ sender: UIButton) {
        
    }
    private func changeTextColor(color: UIColor) {
        //파라미터로 전달받은 컬러가 노란색이면 1로 세팅
        self.yellowBtn.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleBtn.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenBtn.alpha = color == UIColor.green ? 1 : 0.2
    }
    private func changeBackgroundColorButton(color: UIColor) {
        self.blackBtn.alpha = color == UIColor.black ? 1 : 0.2
        self.blueBtn.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeBtn.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
