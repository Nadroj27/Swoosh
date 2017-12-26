//
//  BorderButton.swift
//  Swoosh
//
//  Created by Jordan Vacca on 22/12/2017.
//  Copyright © 2017 Jordan Vacca. All rights reserved.
//

import UIKit

class BorderButton: UIButton
{
    override func awakeFromNib()
    {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }


}
