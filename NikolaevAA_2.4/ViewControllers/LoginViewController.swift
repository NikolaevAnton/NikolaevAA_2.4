//
//  ViewController.swift
//  NikolaevAA_2.4
//
//  Created by Anton Nikolaev on 30.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    private let dataInfo = Registration()
    
    @IBOutlet var userNameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        registrationButton()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func registrationButton() {
        let name = userNameTextField.text!
        let password = passwordTextField.text!
        if name !=  dataInfo.name || password != dataInfo.password {
            showAlert(
                title: "Неправильное имя пользователя и/или пароль",
                message: "введите правильные данные"
            )
            passwordTextField.text = ""
        }
    }
    

    @IBAction func foggotInfo(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "упсик", message: "Твое имя/логин -  \(dataInfo.name)")
        } else {
            showAlert(title: "ууупс!", message: "Пароль: \(dataInfo.password)")
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

