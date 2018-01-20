//
//  DataStoreProtocol.swift
//  CollectionViewAdaptive
//
//  Created by anoop mohanan on 12/01/18.
//  Copyright © 2018 anoop. All rights reserved.
//

import Foundation

protocol DataStoreProtocol {
    
    associatedtype T
    func sectionCount() -> Int
    func rowsCountIn(section: Int) -> Int
    func itemAt(row: Int) -> T?
    func cellIdentifier()-> String
}
