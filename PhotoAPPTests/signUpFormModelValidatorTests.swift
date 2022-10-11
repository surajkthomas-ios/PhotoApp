//
//  signUpFormModelValidator.swift
//  PhotoAPPTests
//
//  Created by suraj thomas on 11/10/22.
//

import XCTest
@testable import PhotoAPP
final class signUpFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupFormValidator_firstnameValid_ReturnsTrue (){
        
        //Arrange
        let sut = signUpFormModelValidator()
        //Act
      let isFirstNameValid =  sut.isfirstnameValid(firstname : "suraj")
        //Assert
        XCTAssertTrue(isFirstNameValid,"tisFirstNameValid () supposed to return true ")
    }

}
