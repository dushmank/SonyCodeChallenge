//
//  imagesCollectionViewCell.swift
//  SonyCodeChallenge
//
//  Created by Kyle Dushman on 11/20/18.
//  Copyright © 2018 Kyle Dushman. All rights reserved.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    
    let cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createLayout()
    }
    
    func createLayout() {
        
        addSubview(cellImageView)
        
        let leftImageView = NSLayoutConstraint(item: cellImageView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1.0, constant: 0.0)
        let rightImageView = NSLayoutConstraint(item: cellImageView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1.0, constant: 0.0)
        let topImageView = NSLayoutConstraint(item: cellImageView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0)
        let bottomImageView = NSLayoutConstraint(item: cellImageView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0)
        NSLayoutConstraint.activate([leftImageView, rightImageView, topImageView, bottomImageView])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
