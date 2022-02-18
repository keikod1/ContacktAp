//
//  MainCell.swift
//  ContacktAp
//
//  Created by my macbook on 16/2/22.
//

import Foundation
import UIKit
class MainCell: UITableViewCell{

    private lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = .systemFont(ofSize: 18, weight: .bold)
        return view
    }()
    private lazy var numberPhoneLabel: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = .systemFont(ofSize: 18, weight: .regular)
        return view
    }()

    override func layoutSubviews() {
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(20)
        }
        addSubview(numberPhoneLabel)
        numberPhoneLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(30)
            make.bottom.equalToSuperview()
        }
    }
    func fill(model: ContactModel){
        self.nameLabel.text = model.name
        self.numberPhoneLabel.text = model.numberPhone
    }
}
