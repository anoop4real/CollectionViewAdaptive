//
//  ViewController.swift
//  CollectionViewAdaptive
//
//  Created by anoop mohanan on 12/01/18.
//  Copyright © 2018 anoop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataStore = DataStore()
    @IBOutlet weak var sampleCollectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int{
        
        return dataStore.sectionCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataStore.rowsCountIn(section: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = dataStore.cellIdentifier()
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:identifier, for: indexPath) as! SampleItemCollectionViewCell
        let data = dataStore.itemAt(row: indexPath.row)
        cell.subTitleLabel.text = data?.subTitle
        cell.titleLabel.text = data?.title
        return cell
    }
    
    // MARK: - CollectionView Layout Delegates
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        return dataStore.itemSize()
    }
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 5.0, left: 10.0, bottom: 0.0, right: 10.0)
//    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        

        
    }
   
}

