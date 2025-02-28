//
//  NetworkReachabilty.swift
//  NYTimes
//
//
//  Created by Jeff Lock on 15/08/24.
//  Copyright © 2024 Jeff Lock. All rights reserved.
//

import Foundation
import Combine
import Reachability

class NetworkReachabilty: ObservableObject {
    
    static let shared = NetworkReachabilty()
    
    private var cancellable: AnyCancellable?
    private var reachability = try? Reachability()
    
    @Published var isNetworkConnected = true
    
    private init(){
        guard let reachability = reachability else { return }
        cancellable = reachability.isReachable.assign(to: \.isNetworkConnected, on: self)
        do {
            try reachability.startNotifier()
        }catch {
            print("Could not start Reachability")
        }
    }
    
    private func dispose(){
        cancellable = nil
        reachability = nil
    }
    
    deinit {
        dispose()
    }
}

