//
//  PhoneCompanyInfo.swift
//  Phonebook Step4
//
//  Created by JuYong Lee.
//  Copyright © 2018 JuYong Lee. All rights reserved.
//

import Foundation

class PhoneCompanyInfo:PhoneInfo {
    //  Phonebook에 필요한 property 선언
    var company:String
    
    //  Designated Initializer 정의
    init(name:String, phoneNumber:String, company:String) {
        self.company = company
        super.init(name: name, phoneNumber: phoneNumber)
    }
    
    //  객체의 저장된 property를 출력하는 기능 정의
    override func printPhoneInfo() -> Void {
        super.printPhoneInfo()
        print("Company: \(self.company)")
    }
}
