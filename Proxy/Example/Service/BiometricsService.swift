//
//  BiometricsService.swift
//  Proxy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class BiometricsService {

    enum Access {
        case authorized
        case denied
    }

    static func checkAccess() -> Access {
        /// The service uses Face ID, Touch ID or a plain old password to
        /// determine whether the current user is an owner of the device.

        /// Let's assume that in our example a user forgot a password :)
        return .denied
    }
}
