//
//  DailyWeatherCollectionViewCell.swift
//  weather
//
//  Created by Tekup-mac-1 on 11/5/2024.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "DailyWeatherCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .purple
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
