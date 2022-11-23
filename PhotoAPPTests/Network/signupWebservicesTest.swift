//
//  signupWebservicesTest.swift
//  PhotoAPPTests
//
//  Created by suraj thomas on 18/10/22.
//

import XCTest
@testable import PhotoAPP

class SignupWebServiceTests: XCTestCase {
    
    var sut:SignupWebService!
    var signFormRequestModel:SignupFormRequestModel!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        sut = SignupWebService(urlString: SignupConstants.signupURLString, urlSession: urlSession)
        signFormRequestModel = SignupFormRequestModel(firstName: "Sergey", lastName: "Kargopolov", email: "test@test.com", password: "12345678")
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        signFormRequestModel = nil
        MockURLProtocol.stubResponseData = nil
     //   MockURLProtocol.error = nil
        
    }
    
    
    
   
}
