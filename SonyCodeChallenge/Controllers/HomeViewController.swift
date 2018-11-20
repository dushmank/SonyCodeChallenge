//
//  HomeViewController.swift
//  SonyCodeChallenge
//
//  Created by Kyle Dushman on 11/20/18.
//  Copyright © 2018 Kyle Dushman. All rights reserved.
//

import UIKit

private let cellid = "cell"

class HomeViewController: UIViewController {

    // Data properties
    var images = [1]
    
    // View Layout Properties
    var tableView = UITableView()
    
    func createTableView() {
        
        tableView.backgroundColor = .green
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellid)
        tableView.allowsSelection = false
        
        view.addSubview(tableView)
        let left = NSLayoutConstraint(item: tableView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0)
        let right = NSLayoutConstraint(item: tableView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0)
        let top = NSLayoutConstraint(item: tableView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1.0, constant: 10.0)
        let bottom = NSLayoutConstraint(item: tableView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([left, right, top, bottom])
        
    }
    
    
    // Create Layout
    func createLayout() {
        
        view.backgroundColor = .white
        
        createTableView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createLayout()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
            return images.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! TableViewCell
    
//            cell.imagesCollectionView
    
            return cell
        }
    
    
    
    
}

    
    
    
    
    
    

