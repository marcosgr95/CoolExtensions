//
//  ViewController.swift
//  CoolExtensions
//
//  Created by Marcos García Rouco on 30/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let circlesView: CirclesView = CirclesView.instance()
        circlesView.setup()
        circlesView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(circlesView)

        NSLayoutConstraint(item: circlesView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 40).isActive = true
        NSLayoutConstraint(item: view as Any, attribute: .trailing, relatedBy: .equal, toItem: circlesView as Any, attribute: .trailing, multiplier: 1, constant: 40).isActive = true
        NSLayoutConstraint(item: circlesView as Any, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 40).isActive = true
        NSLayoutConstraint(item: circlesView as Any, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 140).isActive = true

    }


}

