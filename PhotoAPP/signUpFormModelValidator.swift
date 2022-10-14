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
        if firstname.count < SignupConstatns.firstNameminValue || firstname.count >= SignupConstatns.firstNamemaxValue {
            returnval = false
        }
        return returnval
    }
    
    
    func isLastNameValid (lastName : String) -> Bool{
        
        var returnVal =  true
        
        if lastName.count < SignupConstatns.lastNameminValue || lastName.count > SignupConstatns.lastNamemaxValue {
            
            returnVal = false
        }
        return returnVal
        
    }
    
    func isPasswordValid(password : String)-> Bool {
        
        var returnval = true
        
        if password.count < SignupConstatns.passwordminValue || password.count > SignupConstatns.passwordmaxValue {
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
