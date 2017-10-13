//
//  main.swift
//  Phonebook Step2
//
//  Created by JuYong Lee.
//  Copyright © 2017년 JuYong Lee. All rights reserved.
//

import Foundation

var inputValue:Int?

func showMenu() -> Void {
    print("원하시는 메뉴를 선택해주세요...")
    print("1. 전화번호 입력")
    print("2. 프로그램 종료")
    print("선택: ", separator: "", terminator: "")
}

func menuInput(input:String?) -> Bool {
    if let inputStr = input {
        inputValue = Int(inputStr)
        if inputValue != nil {
            if inputValue! > 0 && inputValue! < 3 {
                return true
            } else {
                print("**************************")
                print("유효한 메뉴를 선택해주세요.")
                return false
            }
        }
    }
    print("**************************")
    print("숫자만 입력가능 합니다.")
    return false
}

repeat {
    showMenu()
    if(!menuInput(input: readLine())) {
        print("다시 입력해주세요.")
        print("**************************")
    }
} while(inputValue != 2);
print("프로그램을 종료합니다.")
