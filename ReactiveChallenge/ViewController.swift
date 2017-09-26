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
    
        performRequestFor(endpoint: "users")
        
        performRequestFor(endpoint: "posts")
        
        performRequestFor(endpoint: "comments")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func performRequestFor(endpoint: String) {
        
        JSONPlaceholder
            .request(endpoint: endpoint)
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

