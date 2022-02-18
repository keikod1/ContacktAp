//
//  SetUpNumberController.swift
//  ContacktAp
//
//  Created by my macbook on 17/2/22.
//

import UIKit
import SnapKit

class SetUpNumberController: UIViewController {
    private lazy var nameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "name..."
        view.textColor = .black
        view.borderStyle = .roundedRect
        view.font = .systemFont(ofSize: 12, weight: .regular)
        return view
    }()
    private lazy var firstNameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "firstName..."
        view.textColor = .black
        view.borderStyle = .roundedRect
        view.font = .systemFont(ofSize: 12, weight: .regular)
        return view
    }()
    private lazy var numberTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "number..."
        view.textColor = .black
        view.borderStyle = .roundedRect
        view.font = .systemFont(ofSize: 12, weight: .regular)
        return view
    }()
    private lazy var doneButton: UIButton = {
        let view = UIButton()
        view.setTitle("Done", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.addTarget(self, action: #selector(clickDone(view:)), for: .touchUpInside)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        setupView()
    }
    @objc func clickDone(view: UIButton){
        SetUpDocument.shared.saveContact(model: ContactModel(name: nameTextField.text ?? "", firsatname: firstNameTextField.text ?? "", numberPhone: numberTextField.text ?? ""))
        navigationController?.pushViewController(MainController(), animated: true)
    }
    private func setupView() {
        view.backgroundColor = .white
    }
    private func setupSubViews() {
        view.addSubview(nameTextField)
        nameTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(view.frame.width / 10)
            make.width.equalToSuperview()
        }
        view.addSubview(firstNameTextField)
        firstNameTextField.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(view.frame.width / 10)
            make.width.equalToSuperview()
        }
        view.addSubview(numberTextField)
        numberTextField.snp.makeConstraints { make in
            make.top.equalTo(firstNameTextField.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(view.frame.width / 10)
            make.width.equalToSuperview()
        }
        view.addSubview(doneButton)
        doneButton.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(view.frame.width / 8)
            make.width.equalTo(view.frame.width / 8)
        }
    }
}
