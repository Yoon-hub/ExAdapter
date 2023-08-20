//
//  ViewController.swift
//  ExAdapter
//
//  Created by VP on 2023/08/11.
//

import UIKit

class ViewController: UIViewController {
    
    let authService: AuthServiceType = AuthService()
    
    let googleAuth: AuthServiceType = AuthGoogleServiceAdapter()
    let naverAuth: AuthServiceType = AuthNaverServiceAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        authService.authenticate(username: "admin", password: "admin") { result in
            print(result)
        }
        
        googleAuth.authenticate(username: "admin", password: "admin") { result in
            print(result)
        }
        
        naverAuth.authenticate(username: "admin", password: "admin") { result in
            print(result)
        }

    }
}

