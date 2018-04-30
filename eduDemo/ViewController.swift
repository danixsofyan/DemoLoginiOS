//
//  ViewController.swift
//  eduDemo
//
//  Created by danixsofyan on 23/04/18.
//  Copyright © 2018 Dycode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        login()
    }
    
    @IBAction func forgetTapper(_ sender: UIButton) {
        let vcForget = storyboard?.instantiateViewController(withIdentifier: "forget") as! ForgetViewController
        vcForget.email = emailTextField.text
        navigationController?.pushViewController(vcForget, animated: true)
    }
    
    //MARK: Function
    func login() {
        view.endEditing(true)
        guard
        let email = emailTextField.text, email == "dani@dycode.com",
        let password = passwordTextField.text, password == "a"
        else{
            let alert = UIAlertController(title: "Error", message: "Invalid email or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }
        let vc = storyboard?.instantiateViewController(withIdentifier: "home")
        navigationController?.pushViewController(vc!, animated: true)
    }

}
