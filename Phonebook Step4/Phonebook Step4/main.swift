//
//  main.swift
//  Phonebook Step4
//
//  Created by JuYong Lee.
//  Copyright © 2018 JuYong Lee. All rights reserved.
//

import Foundation

var inputValue:Int?
var managerObject:Manager = Manager()

func showMenu() -> Void {
    print("원하시는 메뉴를 선택해주세요...")
    print("1. 전화번호 입력")
    print("2. 연락처 검색")
    print("3. 연락처 삭제")
    print("4. 프로그램 종료")
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

func menuInput(input:String?) -> Bool {
    if let inputStr = input {
        inputValue = Int(inputStr)
        if inputValue != nil {
            switch inputValue! {
            case 1:
                print("데이터 입력을 시작합니다.")
                print("1.일반, 2.대학, 3.회사")
                print("선택>> ", separator: "", terminator: "")
                if let selectStrValue = readLine() {
                    if let selectIntValue = Int(selectStrValue) {
                        switch selectIntValue {
                        case 1:
                            print("일반")
                        case 2:
                            print("대학")
                        case 3:
                            print("학사")
                        default:
                            print("유효한 메뉴를 선택해주세요.")
                        }
                        
                    } else {
                        print("숫자만 입력가능 합니다.")
                    }
                }
//                managerObject.createPhoneInfoObject(contactInfo: phoneInfoInput())
//                print("연락처 생성에 성공했습니다.")
//                print("**************************\n")
//                break
            case 2:
                print("검색을 원하는 이름을 입력해주세요: ", separator: "", terminator: "")
                if let inputName = readLine() {
                    if managerObject.searchPhoneInfo(name: inputName).1 {
                        print("**************************\n")
                    } else {
                        print("\(inputName)에 대한 연락처 검색 결과가 존재하지 않습니다.")
                        print("**************************\n")
                    }
                } else {
                    print("다시 입력해주세요.")
                }
                break
            case 3:
                print("삭제를 원하는 이름을 입력해주세요: ", separator: "", terminator: "")
                if let name = readLine() {
                    if managerObject.removePhoneInfo(name: name) {
                        print("연락처 삭제에 성공했습니다.")
                        print("**************************\n")
                    }
                } else {
                    print("다시 입력해주세요.")
                }
                break
            case 4:
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
} while(inputValue != 4);
