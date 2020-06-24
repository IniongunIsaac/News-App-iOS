//
//  ViewController.swift
//  News App
//
//  Created by Isaac Iniongun on 23/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class NewsViewController: UIViewController {
    
    @IBOutlet weak var newsTableView: UITableView!
    
    var newsViewModel: INewsViewModel!
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        observeErrorMessage()
    }

    fileprivate func configureTableView() {
        newsViewModel.articles.map({ $0.isEmpty }).distinctUntilChanged().bind(to: newsTableView.rx.isEmpty()).disposed(by: disposeBag)
        newsViewModel.articles.bind(to: newsTableView.rx.items(cellIdentifier: AppConstants.NEWS_CELL_ID, cellType: NewsTableViewCell.self)) { row, article, cell in
            cell.configureView(article: article)
        }.disposed(by: disposeBag)
        
        newsTableView.rx.itemSelected.subscribe(onNext: { [weak self] indexPath in
            guard let self =  self else { return }
            
            let cell = self.newsTableView.cellForRow(at: indexPath)

            //manual animation for the selected cell
            UIView.animate(withDuration: 0.5, animations: {
                cell?.alpha = 0.7
            }) { completed in
                UIView.animate(withDuration: 0.5, animations: {
                    cell?.alpha = 1
                    self.newsTableView.deselectRow(at: indexPath, animated: true)
                })
            }
            
        }).disposed(by: disposeBag)
    }
    
    fileprivate func observeErrorMessage() {
        newsViewModel.errorMessage.bind { [weak self] message in
            self?.newsTableView.setNoValuesFoundBackgroundMessage(message)
        }.disposed(by: disposeBag)
    }
    
}

