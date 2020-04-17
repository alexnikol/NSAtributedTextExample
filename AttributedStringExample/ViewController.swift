//
//  ViewController.swift
//  AttributedStringExample
//
//  Created by Alexander Nikolaychuk on 17.04.2020.
//  Copyright © 2020 AlexAlmostEngineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mrAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.green,
            .font: UIFont.systemFont(ofSize: 25.0),
            .strikethroughStyle: 3,
            .strikethroughColor: UIColor.red,
        ]
        let nameAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 50.0),
            .backgroundColor: UIColor.yellow,
            .strokeWidth: 5.0,
            .strokeColor: UIColor.gray,
            .kern: 20
        ]
        let lastNameAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.red,
            .font: UIFont.systemFont(ofSize: 30.0, weight: .heavy),
            .underlineStyle: 2,
            .underlineColor: UIColor.blue
        ]
        let mr = "Mr."
        let name = "John"
        let lastName = "Doe"
        let mrString = NSMutableAttributedString(string: mr, attributes: mrAttributes)
        let nameString = NSAttributedString(string: name, attributes: nameAttributes)
        let lastNameString = NSAttributedString(string: lastName, attributes: lastNameAttributes)
        mrString.append(nameString)
        mrString.append(lastNameString)
        let label = UILabel()
        label.attributedText = mrString
        label.frame = CGRect(x: 100, y: 100, width: 400, height: 400)
        self.view.addSubview(label)
        self.view.backgroundColor = UIColor.white
    }


}
