//
//  main.swift
//  Phonebook Step1
//
//  Created by JuYong Lee.
//  Copyright © 2017년 JuYong Lee. All rights reserved.
//

import Foundation

//  Designated Initializer를 이용하여 객체 생성
let person01 = PhoneInfo(name: "Juyong Lee", phoneNumber: "010-****-****", birthDay: "1990-02-08")
let person02 = PhoneInfo(name: "Lukaku", phoneNumber: "010-****-****", birthDay: nil)

//  Convenience Initializer를 이용하여 객체 생성
let person03 = PhoneInfo(name: "C.Ronaldo", phoneNumber: "010-****-****")

//  객체의 연락처 정보를 출력
person01.printPhoneInfo()
person02.printPhoneInfo()
person03.printPhoneInfo()
