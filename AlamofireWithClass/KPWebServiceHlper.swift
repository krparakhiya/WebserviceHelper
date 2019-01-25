//
//  KPWebServiceHlper.swift
//  AlamofireWithClass
//
//  Created by Apple on 25/01/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

//typealias requestHandler = (Integer, String) -> Void



class KPWebServiceHlper {
    static let sharedInstance = KPWebServiceHlper()
    
    
    func HTTPGetRequest(url : String, method: HTTPMethod, parameters : [String:Any] = [:]){
        AF.request(url, method: method, parameters: parameters).responseJSON { (response) in
            switch response.result{
            case .success:
                print(response.result.value as Any)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
