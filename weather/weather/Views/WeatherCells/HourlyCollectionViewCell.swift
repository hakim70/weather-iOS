//
//  HourlyCollectionViewCell.swift
//  weather
//
//  Created by Tekup-mac-1 on 11/5/2024.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HourlyWeatherCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .yellow
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
