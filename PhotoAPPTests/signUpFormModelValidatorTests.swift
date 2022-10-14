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
        XCTAssertFalse(isFirstNameTooShort,"isfirstnameValid () returned false , less than \(SignupConstatns.firstNameminValue) characters")
        
    }
    
    
    func testSignupFormValidator_isFirstNameTooShort_ReturnsFalse () {
        
        let isfirstNameValid = sut.isfirstnameValid(firstname: "surajSuraj")
        
        XCTAssertFalse(isfirstNameValid , "isFirstNameValid () returned false ,more than is \(SignupConstatns.firstNamemaxValue) characters")
    }
    
    func testSignupFormValidator_isLastNameValid_returnsTrue () {
        
        let isLastNameValid = sut.isLastNameValid (lastName:"Thomas")
        XCTAssertTrue(isLastNameValid , "is isLastNameValid returned true")
    }
    func testSignupFormValidator_isLastNameTooShort_returnsFalse () {
        let islastNameValid = sut.isLastNameValid(lastName: "s")
        XCTAssertFalse(islastNameValid ,"isLastNameValid () returned false ,less than 2 characters ")
        
    }
    func testSignUpFormValidator_isLAstNameTooLong_returnsFalse (){
        
        let isLastNameValid = sut.isLastNameValid(lastName: "Thomasthomas")
        XCTAssertFalse(isLastNameValid , "isLastNameValid () returned false , more than 10 characters")
    }
    
    func testSignupFormValidator_isPasswordTooShort_returnsTrue () {
        
        let isPasswordValid = sut.isPasswordValid(password : "pas")
        XCTAssertTrue(isPasswordValid , "password too short")
        
    }
    
    func testSignupFormValidator_isPasswordTooLong_returnsFalse () {
        
        let isPasswordValid = sut.isPasswordValid(password : "passwoasdasdasd")
        XCTAssertFalse(isPasswordValid , "password too long")
    }
    
    
    func testSignupFormValidator_isPassword_returnsFalse () {
        
        let isPasswordValid = sut.isPasswordValid(password : "passwoasdasdasd")
        XCTAssertFalse(isPasswordValid , "password too long")
    }
}
