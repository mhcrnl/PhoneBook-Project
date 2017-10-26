//
//  PhoneInfo.swift
//  Phonebook Step3
//
//  Created by JuYong Lee.
//  Copyright © 2017년 JuYong Lee. All rights reserved.
//

import Foundation

class PhoneInfo {
    //  Phonebook에 필요한 property 선언
    var name:String
    var phoneNumber:String
    var birthday:String?
    
    //  Designated Initializer 정의
    init(name:String, phoneNumber:String, birthDay:String?) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.birthday = birthDay
    }
    
    //  Convenience Initializer 정의
    convenience init(name:String, phoneNumber:String) {
        //  Initializer delegation을 통해 초기화
        self.init(name: name, phoneNumber: phoneNumber, birthDay: nil)
    }
    
    //  객체의 저장된 property를 출력하는 기능 정의
    func printPhoneInfo() -> Void {
        print("\n<입력된 정보 출력>")
        print("Name: \(self.name)")
        print("Phone Number: \(self.phoneNumber)")
        //  Optional Binding을 이용하여 생일이 입력된 경우만 출력하는 로직
        if let birthDay = self.birthday {
            print("Birthday: \(birthDay)")
        }
    }
}

