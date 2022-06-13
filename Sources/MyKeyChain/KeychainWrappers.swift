//
//  KeychainWrappers.swift
//  DemoKeychainAccess
//
//  Created by C879403 on 10/06/22.
//

import Foundation

public class KeychainWrapper: NSObject {
    
    public static func set(value: Data, account: String) throws {
        
        if try KeychainOperations.isExists(account: account) {
            try KeychainOperations.update(value: value, account: account)
        } else {
            try KeychainOperations.add(value: value, account: account)
        }
    }
    
    public static func get(account: String) throws -> Data? {
        
        if try KeychainOperations.isExists(account: account) {
            return try KeychainOperations.retrive(account: account)
        } else {
            throw Errors.operationError
        }
    }
    
    public static func delete(account: String) throws  {
        
        if try KeychainOperations.isExists(account: account) {
            try KeychainOperations.delete(account: account)
        } else {
            throw Errors.operationError
        }
    }
    
    public static func deleteAll(account: String) throws  {
        
        try KeychainOperations.deleteAll(account: account)
        
    }

}
