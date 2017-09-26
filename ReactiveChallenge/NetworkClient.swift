//
//  NetworkClient.swift
//  ReactiveChallenge
//
//  Created by Slobodan Kovrlija on 9/25/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import Foundation
import ReactiveJSON
import ReactiveSwift

struct JSONPlaceholder: Singleton, ServiceHost {

    // protocol: Singleton
    typealias Instance = JSONPlaceholder
    private(set) static var shared = Instance()

    // protocol: ServiceHost
    static var scheme: String { return "https" }
    static var host: String { return "jsonplaceholder.typicode.com" }
    static var path: String? { return nil }
    
}


