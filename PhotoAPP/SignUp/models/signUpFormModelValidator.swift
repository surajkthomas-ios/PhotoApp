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
        if firstname.count < SignupConstants.firstNameminValue || firstname.count >= SignupConstants.firstNamemaxValue {
            returnval = false
        }
        return returnval
    }
    
    
    func isLastNameValid (lastName : String) -> Bool{
        
        var returnVal =  true
        
        if lastName.count < SignupConstants.lastNameminValue || lastName.count > SignupConstants.lastNamemaxValue {
            
            returnVal = false
        }
        return returnVal
        
    }
    
    func isPasswordValid(password : String)-> Bool {
        
        var returnval = true
        
        if password.count < SignupConstants.passwordminValue || password.count > SignupConstants.passwordmaxValue {
            returnval = false
        }
        return returnval
    }
    func isPasswordsEqual(password : String ,repeatPassword : String) -> Bool {
        var returnval = true
         if password != repeatPassword {
            returnval = false
        }
        return returnval
    }
    
    
    
    
    
}
