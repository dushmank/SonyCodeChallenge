//
//  LoginViewController.swift
//  SonyCodeChallenge
//
//  Created by Kyle Dushman on 11/20/18.
//  Copyright © 2018 Kyle Dushman. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    // View layout properties
    var gradientView = UIView()
    var loginTextField = UITextField()
    var passwordTextField = UITextField()
    var loginButton = UIButton()
    
    func createLayout() {
        
        // gradient view
        view.backgroundColor = .blue
        view.addSubview(gradientView)
        let gradientLeft = NSLayoutConstraint(item: gradientView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0)
        let gradientRight = NSLayoutConstraint(item: gradientView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0)
        let gradientTop = NSLayoutConstraint(item: gradientView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0.0)
        let gradientBottom = NSLayoutConstraint(item: gradientView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0.0)
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([gradientLeft, gradientRight, gradientTop, gradientBottom])
        
        // login text field
        loginTextField.placeholder = "Username"
        loginTextField.backgroundColor = .white
        loginTextField.textAlignment = .center
        loginTextField.textColor = .black
        view.addSubview(loginTextField)
        let loginTextFieldWidth = NSLayoutConstraint(item: loginTextField, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.4, constant: 0.0)
        let loginTextFieldCenterX = NSLayoutConstraint(item: loginTextField, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let loginTextFieldCenterY = NSLayoutConstraint(item: loginTextField, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: -60.0)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([loginTextFieldCenterX, loginTextFieldWidth, loginTextFieldCenterY])

        // password text field
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = .white
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textAlignment = .center
        passwordTextField.textColor = .purple
        view.addSubview(passwordTextField)
        let passwordTextFieldWidth = NSLayoutConstraint(item: passwordTextField, attribute: .width, relatedBy: .equal, toItem: loginTextField, attribute: .width, multiplier: 1.0, constant: 0.0)
        let passwordTextFieldCenterX = NSLayoutConstraint(item: passwordTextField, attribute: .centerX, relatedBy: .equal, toItem: loginTextField, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let passwordTextFieldTop = NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: loginTextField, attribute: .bottom, multiplier: 1.0, constant: 30.0)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([passwordTextFieldWidth, passwordTextFieldCenterX, passwordTextFieldTop])
        
        // login button
        loginButton.backgroundColor = .white
        loginButton.layer.cornerRadius = 10.0
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.textColor = .purple
        loginButton.titleLabel?.textAlignment = .center
        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        view.addSubview(loginButton)
        let loginButtonWidth = NSLayoutConstraint(item: loginButton, attribute: .width, relatedBy: .equal, toItem: loginTextField, attribute: .width, multiplier: 2.0, constant: 0.0)
        let loginButtonTop = NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: passwordTextField, attribute: .bottom, multiplier: 1.0, constant: 30.0)
        let loginButtonCenterX = NSLayoutConstraint(item: loginButton, attribute: .centerX, relatedBy: .equal, toItem: passwordTextField, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([loginButtonWidth, loginButtonTop, loginButtonCenterX])
        
    }
    
    
    // loginButton Selector
    
    @objc func handleLogin() {
        
        let homeVC = HomeViewController()
        homeVC.modalTransitionStyle = .coverVertical
        self.present(homeVC, animated: true, completion: nil)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createLayout()
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
