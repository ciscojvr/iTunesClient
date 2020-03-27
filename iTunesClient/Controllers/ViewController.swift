//
//  ViewController.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/25/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let searchEndpoint = Itunes.search(term: "taylor swift", media: .music(entity: .musicArtist, attribute: .artistTerm))
        print(searchEndpoint.request)
        
        let lookupEndpoint = Itunes.lookup(id: 159260351, entity: MusicEntity.album)
        print(lookupEndpoint.request)
    }


}

