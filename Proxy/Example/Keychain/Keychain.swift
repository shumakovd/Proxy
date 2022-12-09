//
//  Keychain.swift
//  Proxy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class Keychain: ProfileService {

    func loadProfile(with fields: [AccessField], success: Success, failure: Failure) {

        var profile = Profile()

        for item in fields {
            switch item {
            case .basic:
                let info = loadBasicProfile()
                profile.firstName = info[Profile.Keys.firstName.raw]
                profile.lastName = info[Profile.Keys.lastName.raw]
                profile.email = info[Profile.Keys.email.raw]
            case .bankAccount:
                profile.bankAccount = loadBankAccount()
            }
        }

        success(profile)
    }

    private func loadBasicProfile() -> [String : String] {
        /// Gets these fields from a secure storage.
        return [Profile.Keys.firstName.raw : "Vasya",
                Profile.Keys.lastName.raw : "Pupkin",
                Profile.Keys.email.raw : "vasya.pupkin@gmail.com"]
    }

    private func loadBankAccount() -> BankAccount {
        /// Gets these fields from a secure storage.
        return BankAccount(id: 12345, amount: 999)
    }
}
