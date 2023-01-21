//
//  ViewController.swift
//  dismissKeyboard
//
//  Created by Maria Eduarda Ferreira Da Silva on 17/11/22.
//

import UIKit

class ViewController: BaseViewController {
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "Inter-Medium", size: 15)
        textField.leftViewMode = .always
        textField.autocorrectionType = .no
        textField.keyboardType = .emailAddress
        textField.placeholder = "Insira o seu texto aqui"
        textField.textColor = .black
        textField.layer.borderWidth = 0.0
        textField.autocapitalizationType = .none
        textField.backgroundColor = .yellow
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
        view.backgroundColor = .white
        configConstraints()
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.textField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70),
            self.textField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.textField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.textField.heightAnchor.constraint(equalToConstant: 30),
        ])
    }

}

