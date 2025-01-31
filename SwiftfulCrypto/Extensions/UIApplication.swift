//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by user274186 on 1/21/25.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
