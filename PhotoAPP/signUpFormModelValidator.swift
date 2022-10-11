//
//  signUpFormModelValidator.swift
//  PhotoAPP
//
//  Created by suraj thomas on 11/10/22.
//

import Foundation
class signUpFormModelValidator {
    
    func isfirstnameValid (firstname : String)->Bool {
        
        var returnval = true
        if firstname.isEmpty {
            returnval = false
        }
        return returnval
    }
    
}
