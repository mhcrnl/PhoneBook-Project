//
//  PhoneCompanyInfo.swift
//  Phonebook Step4
//
//  Created by JuYong Lee.
//  Copyright © 2018 JuYong Lee. All rights reserved.
//

import Foundation

class PhoneCompanyInfo {
    //  Phonebook에 필요한 property 선언
    var name:String
    var phoneNumber:String
    var company:String
    
    //  Designated Initializer 정의
    init(name:String, phoneNumber:String, company:String) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.company = company
    }
    
    //  객체의 저장된 property를 출력하는 기능 정의
    func printPhoneInfo() -> Void {
        print("\n<입력된 정보 출력>")
        print("Name: \(self.name)")
        print("Phone Number: \(self.phoneNumber)")
        print("Company: \(self.company)")
    }
}
