//
//  Manager.swift
//  Phonebook Step3
//
//  Created by JuYong Lee.
//  Copyright © 2017년 JuYong Lee. All rights reserved.
//

import Foundation

class Manager {
    //  전화번호를 관리하는 PhoneInfo 배열
    var phoneInfos:Array<PhoneInfo> = []
    
    //  PhoneInfo 검색 기능
    func searchPhoneInfo(name:String) -> Bool {
        for phoneInfo in self.phoneInfos {
            if phoneInfo.name == name {
                phoneInfo.printPhoneInfo()
                return true
            }
        }
        return false
    }
}
