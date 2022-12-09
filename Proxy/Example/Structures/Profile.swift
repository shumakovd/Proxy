//
//  Profile.swift
//  Proxy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

struct Profile {

    enum Keys: String {
        case firstName
        case lastName
        case email
    }

    var firstName: String?
    var lastName: String?
    var email: String?

    var bankAccount: BankAccount?
}
