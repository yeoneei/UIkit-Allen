//
//  main.swift
//  RandomBingo
//
//  Created by 조연희 on 2022/09/04.
//

import Foundation

var computerChoice = Int.random(in: 0...100)
print(computerChoice)
var userChoice = -1

while userChoice != computerChoice {
    let str = readLine()!
    userChoice = Int(str)!
    
    if userChoice < computerChoice {
        print("up")
    }else if userChoice > computerChoice {
        print("down")
    }
}

print("Bingo")
