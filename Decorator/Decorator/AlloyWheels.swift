//
//  AlloyWheels.swift
//  Decorator
//
//  Created by Вячеслав Квашнин on 18.08.2022.
//

import Foundation

class AlloyWheels: MercedesDecorator {
    override init(decorator: MercedesProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + "premium wheels"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 1000
    }
}
