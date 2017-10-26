//
//  main.swift
//  Phonebook Step3
//
//  Created by JuYong Lee.
//  Copyright © 2017년 JuYong Lee. All rights reserved.
//

import Foundation

var inputValue:Int?
var userPhoneInfo:PhoneInfo?

func showMenu() -> Void {
    print("원하시는 메뉴를 선택해주세요...")
    print("1. 전화번호 입력")
    print("2. 프로그램 종료")
    print("선택: ", separator: "", terminator: "")
}

func phoneInfoInput() -> Dictionary<String, String?> {
    var contactInfo:Dictionary<String, String?> = ["name": nil, "phoneNum": nil, "Birthday": nil]
    
    print("이름: ", separator: "", terminator: "")
    if let name = readLine() {
        contactInfo["name"] = name
    }
    
    print("전화번호: ", separator: "", terminator: "")
    if let phoneNumber = readLine() {
        contactInfo["phoneNum"] = phoneNumber
    }
    
    print("생년월일: ", separator: "", terminator: "")
    if let birthDay = readLine() {
        contactInfo["birthday"] = birthDay
    }
    return contactInfo
}

func phoneInfoObjectCreation(contactInfo:Dictionary<String, String?>) -> Bool {
    if contactInfo["birthday"] == nil {
        userPhoneInfo = PhoneInfo(name: contactInfo["name"]!!, phoneNumber: contactInfo["phoneNum"]!!)
    }
    else {
        userPhoneInfo = PhoneInfo(name: contactInfo["name"]!!, phoneNumber: contactInfo["phoneNum"]!!, birthDay: contactInfo["birthday"]!!)
    }
    if userPhoneInfo == nil {
        return false;
    }
    userPhoneInfo!.printPhoneInfo()
    return true
}

func menuInput(input:String?) -> Bool {
    if let inputStr = input {
        inputValue = Int(inputStr)
        if inputValue != nil {
            switch inputValue! {
            case 1:
                if(phoneInfoObjectCreation(contactInfo: phoneInfoInput())) {
                    print("**************************\n")
                } else {
                    print("연락처 생성에 실패했습니다.")
                }
                break
            case 2:
                print("프로그램을 종료합니다.")
                break
            default:
                print("\n**************************")
                print("유효한 메뉴를 선택해주세요.")
                return false
            }
        } else {
            print("\n**************************")
            print("숫자만 입력가능 합니다.")
            return false
        }
    }
    return true
}

repeat {
    showMenu()
    if(!menuInput(input: readLine())) {
        print("다시 입력해주세요.")
        print("**************************\n")
    }
} while(inputValue != 2);
