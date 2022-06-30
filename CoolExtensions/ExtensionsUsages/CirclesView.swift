//
//  CirclesView.swift
//  CoolExtensions
//
//  Created by Marcos García Rouco on 30/6/22.
//

import UIKit

class CirclesView: UIView {

    @IBOutlet var stars: [UIImageView]!

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setup() {
        for (index, element) in stars.enumerated() {
            element.image = UIImage(systemName: "\(index).circle.fill")?.withRenderingMode(.alwaysTemplate)
            element.tintColor = .white
        }
    }


}
