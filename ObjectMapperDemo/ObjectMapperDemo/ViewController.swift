//
//  ViewController.swift
//  ObjectMapperDemo
//
//  Created by LaNet on 12/27/16.
//  Copyright © 2016 Dev. All rights reserved.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getPost()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getPost()
    {
        let shared = ServerAPI()
        
        shared.invokeHTTPRequestGET("https://jsonplaceholder.typicode.com/users", withToken: false, token: "", withSucessBlock: {
            (result) in
            print("hi")
//            let resultArray = result as! NSArray
//            let dictionaryData = resultArray[0]

            let customerArray = Mapper<UserSwift>().mapArray(JSONArray: result as! [[String : Any]])
            print(customerArray) // customerArray is of type [Customer]?

//            var customer = Mapper<PostSwift>().mapArray(JSONArray: resultArray)! //Swift 3

//            let dictionaryData = resultArray[0]
//            for dictionaryData in resultArray
//            {
                do {
//                    let decoded = try JSONSerialization.data(withJSONObject: dictionaryData, options: .prettyPrinted)
//                    let  stringResp = String(data: decoded, encoding: String.Encoding.utf8)
//                        print(decoded)
//                    print(stringResp!)
//                    let user = ProvincesWrapper(JSONString: stringResp!)
//                    print(user)


                } catch {
                    print(error.localizedDescription)
                }
//            }
//
        }, withFailureBlock: {
            (error) in
            print("hi")

        })
    }
}

