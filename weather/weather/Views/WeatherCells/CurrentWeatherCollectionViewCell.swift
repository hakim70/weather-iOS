//
//  CurrentWeatherCollectionViewCell.swift
//  weather
//
//  Created by Tekup-mac-1 on 11/5/2024.
//

import UIKit

class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "CurrentWeatherCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
