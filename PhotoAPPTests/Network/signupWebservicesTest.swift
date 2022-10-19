//
//  signupWebservicesTest.swift
//  PhotoAPPTests
//
//  Created by suraj thomas on 18/10/22.
//

import XCTest
@testable import PhotoAPP

final class signupWebservicesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testSignupwebservice_GivenSuccesfulResponse_whenreturnsSuccess () {
       //arrange
        let sut = Signupwebservice()
        let signupmodel = SignupFormRequestModel(firstname: "suraj", lastname: "thomas", email: "surajt@gmail.com", password: "12345678")
       //act
        sut.signup (formodel : signupmodel) { (signupResponse, error) in
        //assert
            XCTAssertEqual(signupResponse?.status, "OK")
            
        }
        
    }

}
