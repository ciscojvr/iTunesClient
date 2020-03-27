//
//  QueryItemProvider.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/27/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
