//
//  DataStore.swift
//  CollectionViewAdaptive
//
//  Created by anoop mohanan on 12/01/18.
//  Copyright © 2018 anoop. All rights reserved.
//

import Foundation
import UIKit

class DataStore {
    fileprivate var dataArray = [SampleDataItem]()

    init() {
        preparedata()
    }

    func preparedata(){
        
        let data1 = SampleDataItem(title: "David", subTitle: "Vageta")
        let data2 = SampleDataItem(title: "Noob", subTitle: "Saibot")
        let data3 = SampleDataItem(title: "Lui", subTitle: "Kang")
        let data4 = SampleDataItem(title: "Akuma", subTitle: "Fighter")
        let data5 = SampleDataItem(title: "Ryu", subTitle: "Hunter")
        let data6 = SampleDataItem(title: "Ken", subTitle: "Masters")
        let data7 = SampleDataItem(title: "Sagat", subTitle: "Oneeye")
        let data8 = SampleDataItem(title: "Dhalsim", subTitle: "Swami")
        
        dataArray.append(data1)
        dataArray.append(data2)
        dataArray.append(data3)
        dataArray.append(data4)
        dataArray.append(data5)
        dataArray.append(data6)
        dataArray.append(data7)
        dataArray.append(data8)
    }
}

extension DataStore: DataStoreProtocol {
    
    func sectionCount() -> Int {
        return 1
    }
    func rowsCountIn(section: Int) -> Int {
        
        let rowCount = dataArray.count
        
        return rowCount
    }
    func itemAt(row: Int) -> SampleDataItem? {
        
       return dataArray[row]
    }
    
    func cellIdentifier() -> String {
        var identifier = "cell_iphone"
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad {
           identifier = "cell_ipad"
        }
        return identifier
    }
    
    func itemSize() -> CGSize{
        var size = CGSize(width: UIScreen.main.bounds.width, height: 100)
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad {
            size = CGSize(width: 172.0, height: 252.0)
        }
        return size
    }
    
}
