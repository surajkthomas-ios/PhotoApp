//
//  signUpFormModelValidator.swift
//  PhotoAPPTests
//
//  Created by suraj thomas on 11/10/22.
//

import XCTest
@testable import PhotoAPP
final class signUpFormModelValidatorTests: XCTestCase {

    var sut : signUpFormModelValidator!
    override func setUpWithError() throws {
        
        sut = signUpFormModelValidator ()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        
        sut = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupFormValidator_firstnameValid_ReturnsTrue (){
        
        //Arrange
        //Act
      let isFirstNameValid =  sut.isfirstnameValid(firstname : "suraj")
        //Assert
        XCTAssertTrue(isFirstNameValid,"tisFirstNameValid () supposed to return true ")
    }
    
    func testSignupFormValidator_isFirstnameTooShort_ReturnsFalse () {
        
        let isFirstNameTooShort = sut.isfirstnameValid(firstname:"s")
        XCTAssertFalse(isFirstNameTooShort,"isfirstnameValid () returned false , more than \(SignupConstatns.firstNameminValue) characters")
        
    }
    
    
    func testSignupFormValidator_isFirstNameTooShort_ReturnsFalse () {
        
        let isfirstNameValid = sut.isfirstnameValid(firstname: "surajSuraj")
        
        XCTAssertFalse(isfirstNameValid , "tisFirstNameValid () returned false ,more than is \(SignupConstatns.firstNamemaxValue) characters")
    }

}
