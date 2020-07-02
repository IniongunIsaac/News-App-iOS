//
//  NewsDetailsViewController.swift
//  News App
//
//  Created by Isaac Iniongun on 02/07/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import UIKit
import Kingfisher

class NewsDetailsViewController: UIViewController {

    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var datePublishedLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var articleMediaImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var article: Article!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "News Details"
        setUIData()
    }
    
    fileprivate func setUIData() {
        authorNameLabel.text = article.author
        sourceLabel.text = article.source.name
        titleLabel.text = article.title
        descriptionLabel.text = article.description
        contentLabel.text = article.content
        datePublishedLabel.text = "\(article.publishedAt.split(separator: "T")[0])"
        articleMediaImageView.kf.setImage(
            with: URL(string: article.urlToImage ?? ""),
            placeholder: UIImage(named: "mountains")
        )
    }

}
