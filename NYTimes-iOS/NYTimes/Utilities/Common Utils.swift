//
//  Utils.swift
//  NYTimes
//
//  Created by Jeff Lock on 15/08/24.
//  Copyright © 2024 Jeff Lock. All rights reserved.
//

import Foundation
import UIKit

// Phantom type placeholder for undefined methods
func undefined<T>(_ message:String="",file:String=#file,function:String=#function,line: Int=#line) -> T {
    fatalError("[File: \(file),Line: \(line),Function: \(function),]: Undefined: \(message)")
}
