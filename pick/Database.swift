//
//  Database.swift
//  pick
//
//  Created by Sofie Kedvik on 2017-10-22.
//  Copyright © 2017 Sofie Kedvik. All rights reserved.
//

import Foundation

import UIKit

private var signs: [Signs] = {
    guard let unarchivedObject = UserDefaults.standard.value(forKey: "signs") as? Data else { return [] }
    return NSKeyedUnarchiver.unarchiveObject(with: unarchivedObject) as? [Signs] ?? []
}()

class Database {
    
    private static func save() {
        let data = NSKeyedArchiver.archivedData(withRootObject: signs)
        UserDefaults.standard.setValue(data, forKey: "signs")
        UserDefaults.standard.synchronize()
    }
    
    static var allSigns: [Signs] {
        return signs
    }
    
    static func insert(sign: Signs) {
        signs.append(sign)
        save()
    }
}
