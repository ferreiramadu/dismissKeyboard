//
//  Extension.swift
//  dismissKeyboard
//
//  Created by Maria Eduarda Ferreira Da Silva on 17/11/22.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTapped() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
