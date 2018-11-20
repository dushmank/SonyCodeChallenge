//
//  imagesCollectionView.swift
//  SonyCodeChallenge
//
//  Created by Kyle Dushman on 11/20/18.
//  Copyright © 2018 Kyle Dushman. All rights reserved.
//

import UIKit

class ImagesCollectionView: UICollectionView {

    // Collectionview Properties
    let cellid = "Cell"
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())

        createLayout()
    }
    
    // Create collectionview layout
    func createLayout() {
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        flowLayout.scrollDirection = .horizontal
        self.setCollectionViewLayout(flowLayout, animated: true)
        
        self.register(ImagesCollectionViewCell.self, forCellWithReuseIdentifier: cellid)
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
