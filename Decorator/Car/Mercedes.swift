//
//  Mercedes.swift
//  Decorator
//
//  Created by Вячеслав Квашнин on 18.08.2022.
//

import Foundation

class Mercedes: MercedesProtocol {
    func getTitle() -> String {
        return "Mercedes GLK"
    }
    
    func getPrice() -> Double {
        return 12000
    }
}
