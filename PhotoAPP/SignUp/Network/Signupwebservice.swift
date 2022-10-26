//
//  Signupwebservice.swift
//  PhotoAPP
//
//  Created by suraj thomas on 18/10/22.
//

import Foundation
class Signupwebservice {
    
private  var urlstring:String
    private var urlsession: URLSession
    
    init(urlstring: String, urlsession:URLSession = .shared) {
        self.urlstring = urlstring
        self.urlsession = urlsession
    }
    
    func  signup (formodel : SignupFormRequestModel, completion : @escaping (signupResponseModel?, signupError? ) -> Void) {
        guard let url = URL(string: urlstring) else{
           // TODO: create unit test for specific error message  for url is nil
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try? JSONEncoder ().encode(formodel)
        
        let datatask = URLSession.shared.dataTask(with: request) { data, URLResponse, errorr in
            
            // TODO: unit test to handle error
            
            if let data = data , let signupresponsemodel = try? JSONDecoder().decode(signupResponseModel.self,from: data){
          completion(signupresponsemodel,nil)
                
            }else {
                //TODO: unit test to handle error
            }
            
        }
        
        datatask.resume()
    }
    
}
