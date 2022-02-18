//
//  MainDocument.swift
//  ContacktAp
//
//  Created by my macbook on 16/2/22.
//

import Foundation
import UIKit
import SnapKit
class MainDocument: UIViewController  {
    
    private  var dataBase = UserDefaults.standard

    var contactArray: [ContactModel] = SetUpDocument.shared.setUpContact

      func saveContact(model: ContactModel) {
          SetUpDocument.shared.saveContact(model: model)
      }

      func getContact() -> [ContactModel]{
          return SetUpDocument.shared.setUpContact
      }
//    @objc func clickAddNumber(view: UIButton){
//        navigationController?.pushViewController(SetUpNumberController(), animated: true)
//    }
}
