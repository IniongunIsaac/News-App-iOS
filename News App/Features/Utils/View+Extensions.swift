//
//  View+Extensions.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import UIKit

// MARK: - UICollectionView Extensions

extension UICollectionView {

    func setNoValuesFoundBackgroundMessage(_ message: String = AppConstants.DATA_NOT_FOUND) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .darkGray
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = .poppinsLight()
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel;
    }

    func removeBackgroundView() {
        self.backgroundView = nil
    }
}

// MARK: - UITableView Extensions

extension UITableView {

    func setNoValuesFoundBackgroundMessage(_ message: String = AppConstants.DATA_NOT_FOUND, separatorStyle: UITableViewCell.SeparatorStyle = .none) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .darkGray
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = .poppinsLight()
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel
        self.isScrollEnabled = false
        self.separatorStyle = separatorStyle
    }

    func removeBackgroundView(separatorStyle: UITableViewCell.SeparatorStyle = .none) {
        self.backgroundView = nil
        self.isScrollEnabled = true
        self.separatorStyle = separatorStyle
    }
}
