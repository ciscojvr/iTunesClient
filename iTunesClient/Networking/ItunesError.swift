//
//  ItunesError.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/27/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
}
