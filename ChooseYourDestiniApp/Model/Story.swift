//
//  Story.swift
//  ChooseYourDestiniApp
//
//  Created by Ilya Kokorin on 30.12.2021.
//

import Foundation

struct Story{
    let title: String
    let choice1: String
    let choice2: String
    let choice1Destination : Int
    let choice2Destination : Int
    init(t: String, c1: String, ch1Des: Int, c2: String,  ch2Des: Int) {
        title = t
        choice1 = c1
        choice2 = c2
        choice1Destination = ch1Des
        choice2Destination = ch2Des
    }
}
