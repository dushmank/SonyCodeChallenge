//
//  tableViewCell.swift
//  SonyCodeChallenge
//
//  Created by Kyle Dushman on 11/20/18.
//  Copyright © 2018 Kyle Dushman. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    let imagesCollectionView: ImagesCollectionView = {
        let collectionView = ImagesCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    // Data Variables for CollectionView
    var images = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imagesCollectionView.dataSource = self
        imagesCollectionView.delegate = self
        
        createLayout()
    }
    
    func createLayout(){
        
        contentView.addSubview(imagesCollectionView)
        
        // Contraints for CollectionView
        let collectionViewLeft = NSLayoutConstraint(item: imagesCollectionView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1.0, constant: 0.0)
        let collectionViewRight = NSLayoutConstraint(item: imagesCollectionView, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1.0, constant: 0.0)
        let collectionViewTop = NSLayoutConstraint(item: imagesCollectionView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1.0, constant: 0.0)
        let collectionViewBottom = NSLayoutConstraint(item: imagesCollectionView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1.0, constant: 0.0)
        NSLayoutConstraint.activate([collectionViewLeft, collectionViewRight, collectionViewTop, collectionViewBottom])

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// Delegate and DataSource for the CollectionView
extension TableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ImagesCollectionViewCell
        
        cell.cellImageView.image = UIImage(named: "sonyImage")
                
        return cell
    }
    
    // Cell Size for CollectionView cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = collectionView.frame.width/6-10
        let height: CGFloat = collectionView.frame.width/6-10

        return CGSize(width: width, height: height)
    }
    
    // Line spacing for the CollectionView cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 10
    }
    
    // Edge insets for the CollectionView cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
}
