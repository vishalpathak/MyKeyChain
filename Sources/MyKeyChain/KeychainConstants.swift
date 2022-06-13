//
//  KeychainConstants.swift
//  DemoKeychainAccess
//
//  Created by C879403 on 10/06/22.
//

import Foundation

internal let service: String = "MySecretService"

internal enum Errors: Error {
    case keyChainCreatingError
    case operationError
}


