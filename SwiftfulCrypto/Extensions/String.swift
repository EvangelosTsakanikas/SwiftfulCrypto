//
//  String.swift
//  SwiftfulCrypto
//
//  Created by user274186 on 1/31/25.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
