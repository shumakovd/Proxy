//
//  LocalizedError.swift
//  Proxy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit
import Foundation

extension LocalizedError {

    var localizedSummary: String {
        return errorDescription ?? ""
    }
}
