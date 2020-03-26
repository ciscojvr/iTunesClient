//
//  AlbumCell.swift
//  iTunesClient
//
//  Created by Francisco Ozuna on 3/26/20.
//  Copyright © 2020 ozuna. All rights reserved.
//

import UIKit

class AlbumCell: UITableViewCell {
    
    static let reuseIdentifier = "AlbumCell"

    @IBOutlet weak var artworkView: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // helper method to help configure the cell
    func configure(with viewModel: AlbumCellViewModel) {
        albumTitleLabel.text = viewModel.title
        genreLabel.text = viewModel.genre
        releaseDateLabel.text = viewModel.releaseDate
    }

}




