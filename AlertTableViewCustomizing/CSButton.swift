//
//  CSButton.swift
//  AlertTableViewCustomizing
//
//  Created by 503-26 on 30/11/2018.
//  Copyright © 2018 customizing. All rights reserved.
//

import UIKit

public enum CSButtonType{
    case rect
    case circle
}

class CSButton: UIButton {
    var style:CSButtonType = .rect{
        didSet{
            switch style {
            case .rect:
                self.backgroundColor = UIColor.black
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 0
                self.setTitle("사각버튼", for: .normal)
                self.setTitleColor(UIColor.white, for: .normal)
            case .circle:
                self.backgroundColor = UIColor.red
                self.layer.borderColor = UIColor.blue.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 30
                self.setTitle("동그란버튼", for: .normal)
                self.setTitleColor(UIColor.white, for: .normal)
            }
        }
    }
}
