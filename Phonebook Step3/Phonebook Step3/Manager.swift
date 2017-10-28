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
    
    //  PhoneInfo 저장 기능
    func createPhoneInfoObject(contactInfo:Dictionary<String, String?>) -> Void {
        if let birthInfo = contactInfo["birthday"] {
            self.phoneInfos.append(PhoneInfo(name: contactInfo["name"]!!, phoneNumber: contactInfo["phoneNum"]!!, birthDay: birthInfo))
        } else {
            self.phoneInfos.append(PhoneInfo(name: contactInfo["name"]!!, phoneNumber: contactInfo["phoneNum"]!!))
        }
    }
    //  PhoneInfo 검색 기능
    func searchPhoneInfo(name:String) -> (Int, Bool) {
        var index:Int = 0
        for phoneInfo in self.phoneInfos {
            if phoneInfo.name == name {
                phoneInfo.printPhoneInfo()
                return (index, true)
            }
            index += 1
        }
        return (-1, false)
    }
    //  PhoneInfo 삭제 기능
    func removePhoneInfo() -> Void {
        
    }
}
