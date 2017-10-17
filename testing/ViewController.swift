//
//  ViewController.swift
//  testing
//
//  Created by Luis Santiago  on 10/16/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    var label:UILabel?;
    var button:UIButton?;
    var textField:UITextField?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setting background
        view.backgroundColor = UIColor.white;
        navigationItem.title = "Testing";
        setUpUI();
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return false;
    }
    
    func setUpUI(){
        textField = UITextField(frame: CGRect(x: 20, y: 100, width: view.frame.width-40, height: 50));
        textField?.placeholder = "Enter you name";
        textField?.borderStyle = .roundedRect;
        textField?.textAlignment = .center;
        textField?.delegate = self;
        
        
        button = UIButton(frame: CGRect(x:20 , y:(textField?.frame.maxY)!+14, width: view.frame.width-40, height: 50));
        button?.setTitle("Touch me", for: .normal);
        button?.setTitleColor(.white, for: .normal);
        button?.backgroundColor = .blue;
        button?.addTarget(self, action: #selector(handleClickButton), for: .touchUpInside);
        
        
        label = UILabel(frame:CGRect(x: 20, y: (button?.frame.maxY)!+10, width: view.frame.width-40, height: 50));
        label?.textColor = .black;
        label?.textAlignment = .center;
        
        //setting up the views
        self.view.addSubview(textField!);
        self.view.addSubview(button!);
        self.view.addSubview(label!);
        
    }
    
    @objc func handleClickButton(){
        label?.text = "Bienvenido, \(textField?.text!)";
    }
}

