//
//  MercedesDecorator.swift
//  Decorator
//
//  Created by Вячеслав Квашнин on 18.08.2022.
//

import Foundation

class MercedesDecorator: MercedesProtocol {
    private let decoratorType: MercedesProtocol
    
    init(decorator: MercedesProtocol) {
        self.decoratorType = decorator
    }
    
    func getTitle() -> String {
        return decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        return decoratorType.getPrice()
    }
    
    
}
