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
            .foregroundColor: UIColor.green, //Text color
            .font: UIFont.systemFont(ofSize: 25.0), //Font, Font size
            .strikethroughStyle: 3, //Width of strikethrough line
            .strikethroughColor: UIColor.red, //Color of strikethrough line
        ]
        let nameAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white, //Text color
            .font: UIFont.systemFont(ofSize: 50.0), //Font, Font size
            .backgroundColor: UIColor.yellow, //Background color
            .strokeWidth: 5.0, //Word border width
            .strokeColor: UIColor.gray, //Word border color
            .kern: 20 //Space between letters
        ]
        let lastNameAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.red, //Text color
            .font: UIFont.systemFont(ofSize: 30.0, weight: .heavy), //Font, Font size and Font Weight
            .underlineStyle: 2, //Width of underline
            .underlineColor: UIColor.blue //Color of underline
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
