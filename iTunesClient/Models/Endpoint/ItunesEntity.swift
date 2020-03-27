//
//  ItunesEntity.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/27/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import Foundation

enum ItunesEntity {
    case movie
    case podcast
    case music(MusicEntity)
    case musicVideo
    case audiobook
    case shortFilm
    case tvShow
    case software
    case ebook
    case all
}

enum MusicEntity: String {
    case musicArtist
    case musicTrack
    case album
    case musicVideo
    case mix
    case song
}

extension MusicEntity: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}
