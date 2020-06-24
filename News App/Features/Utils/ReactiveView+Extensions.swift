//
//  ReactiveViewExtensions.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UITableView {
    func isEmpty(message: String = AppConstants.DATA_NOT_FOUND) -> Binder<Bool> {
        return Binder(base) { tableView, isEmpty in
            if isEmpty {
                tableView.setNoValuesFoundBackgroundMessage()
            } else {
                tableView.removeBackgroundView()
            }
        }
    }
}

extension Reactive where Base: UICollectionView {
    func isEmpty(message: String = AppConstants.DATA_NOT_FOUND) -> Binder<Bool> {
        return Binder(base) { collectionView, isEmpty in
            if isEmpty {
                collectionView.setNoValuesFoundBackgroundMessage(message)
            } else {
                collectionView.removeBackgroundView()
            }
        }
    }
}
