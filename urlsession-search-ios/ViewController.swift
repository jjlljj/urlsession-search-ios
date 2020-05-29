//
//  ViewController.swift
//  urlsession-search-ios
//
//  Created by James on 5/29/20.
//  Copyright © 2020 jjlljj. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
  
  lazy var searchBar:UISearchBar = UISearchBar()
  
  
  var searchContainer = UIView()
  
  override func viewDidLoad() {
    view.backgroundColor = .blue
    
    searchBar.searchBarStyle = UISearchBar.Style.prominent
    searchBar.placeholder = " Search..."
    searchBar.sizeToFit()
    searchBar.isTranslucent = false
    searchBar.backgroundImage = UIImage()
    searchContainer.addSubview(searchBar)
    navigationItem.titleView = searchBar
    
    searchContainer.backgroundColor = .green
    view.addSubview(searchContainer)
  }
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
    searchContainer.translatesAutoresizingMaskIntoConstraints = false
    let views : [String:Any] = ["searchContainer":searchContainer]
    
    view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[searchContainer]-|", options: [], metrics: nil, views: views))
  }
  
  
  func searchBar(searchBar: UISearchBar, textDidChange textSearched: String) {
    print(textSearched)
  }
  
  
}

