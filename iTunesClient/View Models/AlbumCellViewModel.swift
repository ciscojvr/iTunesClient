//
//  AlbumCellViewModel.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/26/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import Foundation
import UIKit

// this will be a one-way object. It doesn't model any state. It just accepts data and formats it into the desired format and then outputs it.

struct AlbumCellViewModel {
    let artwork: UIImage
    let title: String
    let releaseDate: String
    let genre: String
}

// alway add struct initializers in extensions, so that they don’t override the default member wise initializer. That way if you want to quickly test that the cell is working for some different set of data. Let’s say you don’t have an album. You can just pass in the values directly using the default init method.
extension AlbumCellViewModel {
    init(album: Album) {
        self.artwork = album.artworkState == .downloaded ? album.artwork! : #imageLiteral(resourceName: "AlbumPlaceholder")
        self.title = album.censoredName
        self.genre = album.primaryGenre.name
        
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "MMM dd, yyyy"
        
        self.releaseDate = formatter.string(from: album.releaseDate)
    }
}
