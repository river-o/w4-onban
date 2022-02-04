//
//  ViewController.swift
//  Onban
//
//  Created by river.o on 2022/02/03.
//

import UIKit

struct StoreConstant {
    static let storeCollectionViewCellIdentifier = "storeCollectionViewCell"
}

class StoreViewController: UIViewController {
    
    private let storeCollectionViewDataSource = StoreCollectionViewDataSource()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 200, height: 200)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        initCollectionView()
    }
    
    private func initView() {
        view.backgroundColor = .white
        
        view.addSubview(collectionView)
        
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    private func initCollectionView() {
        collectionView.register(StoreCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: StoreConstant.storeCollectionViewCellIdentifier)
        collectionView.dataSource = storeCollectionViewDataSource
    }
    
}

