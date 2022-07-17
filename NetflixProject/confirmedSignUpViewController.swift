//
//  confirmedSignUpViewController.swift
//  NetflixProject
//
//  Created by 나리강 on 2022/07/17.
//

import UIKit



class confirmedSignUpViewController: UIViewController {

    @IBOutlet weak var welcomeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black

        mainLabel.text = "ANNFLIX"
        mainLabel.textColor = UIColor.orange
        mainLabel.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        welcomeTextView.text = "Welcome Signup !"
        welcomeTextView.textAlignment = .center
        welcomeTextView.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        welcomeTextView.textColor = .white
        welcomeTextView.backgroundColor = .blue
    }
    
    
    @IBOutlet weak var mainLabel: UILabel!
}
