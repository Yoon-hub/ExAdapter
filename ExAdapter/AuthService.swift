//
//  AuthService.swift
//  ExAdapter
//
//  Created by VP on 2023/08/11.
//

import Foundation

protocol AuthServiceType {
    func authenticate(username: String, password: String, completion: @escaping (Bool) -> Void)

}

class AuthService: AuthServiceType {
    func authenticate(username: String, password: String, completion: @escaping (Bool) -> Void) {
        (username == "admin" && password == "admin") ? completion(true) : completion(false)
    }
}

enum Key {
    static let googleKey = 111111
    static let naverKey = 222222
}

class AuthGoogleService {
    func authenticate(username: String, password: String, authNumber: Int, completion: @escaping (Bool) -> Void) {
        (username == "admin" && password == "admin" && authNumber == Key.googleKey) ? completion(true) : completion(false)
    }
}

class AuthNaverService {
    func authenticate(username: String, password: String, authNumber: Int, completion: @escaping (Bool) -> Void) {
        (username == "admin" && password == "admin" && authNumber == Key.naverKey) ? completion(true) : completion(false)
    }
}

class AuthGoogleServiceAdapter: AuthServiceType  {
    let authGoogleService = AuthGoogleService()
    
    func authenticate(username: String, password: String, completion: @escaping (Bool) -> Void) {
        authGoogleService.authenticate(username: username, password: password, authNumber: Key.googleKey, completion: completion)
    }
}

class AuthNaverServiceAdapter: AuthServiceType {
    let authNaverService = AuthNaverService()
    
    func authenticate(username: String, password: String, completion: @escaping (Bool) -> Void) {
        authNaverService.authenticate(username: username, password: password, authNumber: Key.naverKey, completion: completion)
    }
}

