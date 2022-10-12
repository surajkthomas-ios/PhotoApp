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
    
    func testSignupFormValidator_isFirstnameTooShort_ReturnsTrue () {
        
        let sut = signUpFormModelValidator()
        let isFirstNameTooShort = sut.isfirstnameValid(firstname:"s")
        XCTAssertFalse(isFirstNameTooShort,"isfirstnameValid () supposed to return true")
        
    }

}
