//
//  NewsTableViewCell.swift
//  News App
//
//  Created by Isaac Iniongun on 24/06/2020.
//  Copyright © 2020 Iniongun Group. All rights reserved.
//

import UIKit
import Kingfisher

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var sourceNameLabel: UILabel!
    @IBOutlet weak var datePublishedLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newImageView: UIImageView!
    
    
    func configureView(article: Article) {
        authorNameLabel.text = article.author
        sourceNameLabel.text = article.source.name
        datePublishedLabel.text = "\(article.publishedAt.split(separator: "T")[0])"
        titleLabel.text = article.title
        newImageView.kf.setImage(
            with: URL(string: article.urlToImage ?? ""),
            placeholder: UIImage(named: "mountains")
        )
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
