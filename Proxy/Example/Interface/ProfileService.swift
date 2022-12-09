//
//  ProfileService.swift
//  Proxy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

protocol ProfileService {

    typealias Success = (Profile) -> ()
    typealias Failure = (LocalizedError) -> ()

    func loadProfile(with fields: [AccessField], success: Success, failure: Failure)
}
