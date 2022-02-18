//
//  ContackModel.swift
//  ContacktAp
//
//  Created by my macbook on 16/2/22.
//

import Foundation

class ContactModel: Codable {
    var name: String? = nil
    var firstName: String? = nil
    var numberPhone: String? = nil
    
    init(name: String, firsatname: String, numberPhone: String){
        self.name = name
        self.firstName = firsatname
        self.numberPhone = numberPhone
    }
    init(name: String, numberPhone: String){
        self.name = name
        self.numberPhone = numberPhone
    }
}
