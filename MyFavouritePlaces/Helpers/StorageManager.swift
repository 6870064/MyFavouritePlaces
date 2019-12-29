//
//  StorageManager.swift
//  MyFavouritePlaces
//
//  Created by Dzmitry Viachaslavau on 11/23/19.
//  Copyright © 2019 Dzmitry Viachaslavau. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
//
