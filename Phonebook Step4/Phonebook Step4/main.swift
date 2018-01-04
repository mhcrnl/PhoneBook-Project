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

func phoneInfoInput(selectCase:Int) -> Dictionary<String, String> {
    
    var contactInfo:Dictionary<String, String> = [:]
    print("이름: ", separator: "", terminator: "")
    if let name = readLine() {
        contactInfo["name"] = name
    }
    
    print("전화번호: ", separator: "", terminator: "")
    if let phoneNumber = readLine() {
        contactInfo["phoneNum"] = phoneNumber
    }
    
    switch selectCase {
    case 2:
        print("전공: ", separator: "", terminator: "")
        if let major = readLine() {
            contactInfo["major"] = major
        }
        print("학년: ", separator: "", terminator: "")
        if let grade = readLine() {
            contactInfo["grade"] = grade
        }
    case 3:
        print("회사: ", separator: "", terminator: "")
        if let company = readLine() {
            contactInfo["company"] = company
        }
    default:
        print("Default Never Used!")
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
                        var caseNum:Int = 0
                        switch selectIntValue {
                        case 1:
                            caseNum = 1
                        case 2:
                            caseNum = 2
                        case 3:
                            caseNum = 3
                        default:
                            print("유효한 메뉴를 선택해주세요.")
                            caseNum = -1
                        }
                        if caseNum != -1 {
//                            managerObject.createPhoneInfoObject(contactInfo: phoneInfoInput(selectCase:caseNum))
                            print(phoneInfoInput(selectCase:caseNum))
                            print("연락처 생성에 성공했습니다.")
                            print("**************************\n")
                            break
                        }
                    } else {
                        print("숫자만 입력가능 합니다.")
                    }
                }
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
