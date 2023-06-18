//
//  Double+Extension.swift
//  Crypto
//
//  Created by Juan Hernandez Pazos on 18/06/23.
//

import Foundation

extension Double {
    
    /// Convierte un doble en Currency con 2 lugares decimales
    /// ```
    /// Convertir 1234.56 a $1,234.56
    /// Convertir 12.3456 a $12.34
    /// Convertir 0.123456 a $0.12
    /// ```
    private var currentFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        
        return formatter
    }
    
    /// Convierte un doble en Currency con 2 lugares decimales
    /// ```
    /// Convertir 1234.56 a "$1,234.56"
    /// Convertir 12.3456 a "$12.34"
    /// Convertir 0.123456 a "$0.12"
    /// ```
    func asCurrencyWidth2Decimals() -> String {
        let number = NSNumber(value: self)
        return currentFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Convierte un doble en Currency con 2-6 lugares decimales
    /// ```
    /// Convertir 1234.56 a $1,234,56
    /// Convertir 12.3456 a $12.3456
    /// Convertir 0.123456 a $0.123456
    /// ```
    private var currentFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        
        return formatter
    }
    
    /// Convierte un doble en Currency con 2-6 lugares decimales
    /// ```
    /// Convertir 1234.56 a "$1,234,56"
    /// Convertir 12.3456 a "$12.3456"
    /// Convertir 0.123456 a "$0.123456"
    /// ```
    func asCurrencyWidth6Decimals() -> String {
        let number = NSNumber(value: self)
        return currentFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Convierte un doble en String
    /// ```
    /// Convertir 1.23456 a "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Convierte un doble en String con símbolo de porcentaje
    /// ```
    /// Convertir 1.23456 a "1.23%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
