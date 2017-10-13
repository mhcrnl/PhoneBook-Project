//
//  PhoneInfo.swift
//  Phonebook Step1
//
//  Created by JuYong Lee.
//  Copyright © 2017년 JuYong Lee. All rights reserved.
//

import Foundation

class PhoneInfo {
    var name:String
    var phoneNumber:String
    var birthday:String?
    
    init(name:String, phoneNumber:String, birthDay:String?) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.birthday = birthDay
    }
    
    convenience init(name:String, phoneNumber:String) {
        self.init(name: name, phoneNumber: phoneNumber, birthDay: nil)
    }
    
    func printPhoneInfo() -> Void {
        print("Name: \(self.name)")
        print("Phone Number: \(self.phoneNumber)")
        if let birthDay = self.birthday {
            print("Birthday: \(birthDay)")
        }
    }
}
