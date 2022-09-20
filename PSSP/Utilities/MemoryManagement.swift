//
//  MemoryManagement.swift
//  PSSP
//
//  Created by Mutlu Aydin on 9/17/22.
//

import Foundation

class MemoryManagement {
    
    let userDefault = UserDefaults.standard
    var curDayPushUpArray = [Int]()
    
    
    func addToCurDayPushUpArray(_ count: Int) {
        
        curDayPushUpArray.append(count)
        
        userDefault.set(curDayPushUpArray, forKey: "todayPushes")
        
    }
    
//    func totalReps() -> Int {
//
//        if let curArray = userDefault.object(forKey: "todayPushes") {
//            for i in curArray {
//                
//            }
//        }
//
//        return 0
//    }
    
    
}
