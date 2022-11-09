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
        let sut = SignupWebservice(urlstring : "http://appsdeveloperblog.com:8080/signup-mock-service/users")
        let customExpectation = self.expectation(description: "custom expectation")
        let signupmodel = SignupFormRequestModel(firstName: "suraj", lastName: "thomas", email: "surajt@gmail.com", password: "12345678")
       //act
        sut.signup (withForm : signupmodel) { (signupResponse, error) in
        //assert
            XCTAssertEqual(signupResponse?.status, "OK")
            customExpectation.fulfill()
        }
        self.wait(for: [customExpectation], timeout: 3)
    }

}
