//
//  ItunesMedia.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/27/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import Foundation

enum ItunesMedia {
    case movie
    case podcast
    case music(entity: MusicEntity?)
    case musicVideo
    case audiobook
    case shortFilm
    case tvShow
    case software
    case ebook
    case all
}

extension ItunesMedia: CustomStringConvertible {
    var description: String {
        switch self {
        case .movie: return "movie"
        case .podcast: return "podcast"
        case .music: return "music"
        case .musicVideo: return "musicVideo"
        case .audiobook: return "audiobook"
        case .shortFilm: return "shortFilm"
        case .tvShow: return "tvShow"
        case .software: return "software"
        case .ebook: return "ebook"
        case .all: return "all"
        }
    }
}

extension ItunesMedia {
    var entityQueryItem: URLQueryItem? {
        switch self {
        case .music(let entity): return entity?.queryItem
        default: return nil
        }
    }
}
