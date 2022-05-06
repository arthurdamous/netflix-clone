//
//  CollectionViewTableViewCell.swift
//  NetflixClone
//
//  Created by Arthur Damous on 05/05/22.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
    }
    
    required init(coder:NSCoder) {
        fatalError()
    }

}
