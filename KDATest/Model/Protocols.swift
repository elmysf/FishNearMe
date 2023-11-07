//
//  Protocols.swift
//  KDATest
//
//  Created by Sufiandy Elmy on 07/11/23.
//

import Foundation

//1. categories change deleget
protocol TabChangeDelegate {
    func onTabChange(id: String)
}

//2. search delegate
protocol SearchChangeDelegate {
    func onKeyChange(text: String)
}

