//
//  ViewController.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 10/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        username.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        password.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
    
    @IBAction func toTable(_ sender: UIButton) {
        let table = UIStoryboard(name: "PeopleTableViewController", bundle: nil).instantiateViewController(withIdentifier: "PeopleTableViewController") as! PeopleTableViewController
        present(table, animated: true, completion: nil)
        
    }
}

