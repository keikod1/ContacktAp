//
//  SetUpDocument.swift
//  ContacktAp
//
//  Created by my macbook on 18/2/22.
//

import Foundation
import UIKit
import SnapKit

class SetUpDocument{
private  var defaults = UserDefaults.standard
static var shared = SetUpDocument()

var setUpContact: [ContactModel]{
get{
    if let data = defaults.value(forKey: "setUpContact") as? Data{
       return try! PropertyListDecoder().decode([ContactModel].self, from: data)
    }else{
        return [ContactModel]()
    }
}
set{
    if let data = try? PropertyListEncoder().encode(newValue){
        defaults.set(data, forKey: "setUpContact")
    }
}
}
func saveContact(model: ContactModel){
    let contact = ContactModel(name: model.name!, firsatname: model.name!, numberPhone: model.numberPhone!)
        setUpContact.insert(contact, at: 0)
    }
}

