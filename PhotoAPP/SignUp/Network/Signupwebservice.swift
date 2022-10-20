//
//  Signupwebservice.swift
//  PhotoAPP
//
//  Created by suraj thomas on 18/10/22.
//

import Foundation
class Signupwebservice {
    
private  var urlstring:String
    init(urlstring: String) {
        self.urlstring = urlstring
    }
    
    func  signup (formodel : SignupFormRequestModel, completion : @escaping (signupResponseModel?, signupError? ) -> Void) {
        guard let url = URL(string: urlstring) else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try? JSONEncoder ().encode(formodel)
    }
    
}
