//
//  ViewController.swift
//  ReactiveChallenge
//
//  Created by Slobodan Kovrlija on 9/25/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import UIKit
import ReactiveJSON
import ReactiveSwift
import Result

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        performRequest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func performRequest() {
        
        JSONPlaceholder
            .request(endpoint: "users")
            .startWithResult { (result: Result<[Any], NetworkError>) in
                switch result {
                case .success:
                    print(result)
                case .failure:
                    print("error")
                }
        }
    }
    
}

