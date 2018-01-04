//
//  PhoneUnivInfo.swift
//  Phonebook Step4
//
//  Created by JuYong Lee.
//  Copyright © 2018 JuYong Lee. All rights reserved.
//

import Foundation

class PhoneUnivInfo:PhoneInfo {
    //  Phonebook에 필요한 property 선언
    var major:String
    var year:Int
    
    //  Designated Initializer 정의
    init(name:String, phoneNumber:String, major:String, year:Int) {
        self.major = major
        self.year = year
        super.init(name: name, phoneNumber: phoneNumber)
    }
    
    //  객체의 저장된 property를 출력하는 기능 정의
    override func printPhoneInfo() -> Void {
        super.printPhoneInfo()
        print("Major: \(self.major)")
        print("Year: \(self.year)")
    }
}
