//
//  ViewController.swift
//  practiceApp
//
//  Created by Laura Evans on 11/21/16.
//  Copyright © 2016 Laura Evans. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Alamofire.request("https://httpbin.org/get").responseJSON { response in
//            print(response.request)  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
//            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
//        }
        
        
        if let filepath = Bundle.main.path(forResource: "example", ofType: "json") {
            
            do {
                let contents = try String(contentsOfFile: filepath)
                
                if let dataFromString = contents.data(using: .utf8, allowLossyConversion: false) {
                    let json = JSON(data: dataFromString)
                    print(json)
                } else {
                    print("error reading json from string data")
                }

            } catch {
                // contents could not be loaded
            }
            
            
        } else {
            // example.json not found!
        }
        

    }



}

