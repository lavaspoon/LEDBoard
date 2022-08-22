//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by spoon lava on 2022/08/19.
//

import UIKit

// 1. 델리게이트 프로토콜 정의
protocol LEDBoardSettingDelegate : AnyObject {
    func changeSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController : UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
// 2. 델리게이트 프로퍼티 추가
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColorButton(color: self.backgroundColor)
    }
    @IBAction func tapTextColorBtn(_ sender: UIButton) {
        if sender == self.yellowBtn {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.purpleBtn {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    @IBAction func tapBackGroundColorBtn(_ sender: UIButton) {
        if sender == self.blackBtn {
            self.changeBackgroundColorButton(color: .black)
            self.backgroundColor = .black
        } else if sender == self.blueBtn {
            self.changeBackgroundColorButton(color: .blue)
            self.backgroundColor = .blue
        } else {
            self.changeBackgroundColorButton(color: .orange)
            self.backgroundColor = .orange
        }
    }
    @IBAction func tapSaveBtn(_ sender: UIButton) {
        self.delegate?.changeSetting(text: self.textField.text, textColor: self.textColor, backgroundColor: self.backgroundColor)
        self.navigationController?.popViewController(animated: true)
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
