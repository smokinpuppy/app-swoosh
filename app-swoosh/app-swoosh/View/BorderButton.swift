//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Robert Haddad on 11/19/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
