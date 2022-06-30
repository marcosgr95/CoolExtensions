//
//  UIView+Extension.swift
//  CoolExtensions
//
//  Created by Marcos García Rouco on 30/6/22.
//

import Foundation
import UIKit

extension UIView {
    class func instance<T: UIView>() -> T {
        return Bundle(for: Self.self).loadNibNamed(String(describing: Self.self), owner: nil)?.first as! T
    }
}
