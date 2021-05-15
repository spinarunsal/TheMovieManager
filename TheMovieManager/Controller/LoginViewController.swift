//
//  LoginViewController.swift
//  TheMovieManager
//
//  Created by Owen LaRosa on 8/13/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginViaWebsiteButton: UIButton!
    
    var email = ""
    var pass = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        email = emailTextField.text!
        pass = passwordTextField.text!
        TMDBClient.getRequestToken(completion: handleRequestTokenResponse(success:error:))
    }
    
    @IBAction func loginViaWebsiteTapped() {
        TMDBClient.getRequestToken { (succuess, error) in
            if succuess {
                UIApplication.shared.open(TMDBClient.Endpoints.webAuth.url, options: [:], completionHandler: nil)
            }
        }
    }
    
    func handleRequestTokenResponse (success: Bool, error: Error?) {
        if success {
            print(TMDBClient.Auth.requestToken)
            TMDBClient.login(username: self.emailTextField.text ?? "", password: self.passwordTextField.text ?? "", completion: self.handleLoginResponse(success:error:))
        }
    }
    
    func handleLoginResponse (success: Bool, error: Error?) {
        print(TMDBClient.Auth.requestToken)
        if success {
            TMDBClient.createSessionId(completion: handleSessionResponse(success:error:))
        }
    }
    
    func handleSessionResponse (success: Bool, error: Error?) {
        if success {
            self.performSegue(withIdentifier: "completeLogin", sender: nil)
        }
    }
}
