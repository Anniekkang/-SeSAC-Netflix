//
//  SignUpViewController.swift
//  NetflixProject
//
//  Created by 나리강 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {

    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!

    @IBOutlet weak var extrainfoLabel: UILabel!
    @IBOutlet weak var mainSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        
        mainLabel.text = "ANNFLIX"
        mainLabel.textColor = UIColor.orange
        mainLabel.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        emailTextField.keyboardType = .namePhonePad
        setup(emailTextField)
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.keyboardType = .numberPad
        setup(passwordTextField)
        
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        nicknameTextField.keyboardType = .namePhonePad
        setup(nicknameTextField)
        
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        locationTextField.keyboardType = .namePhonePad
        setup(locationTextField)
        
        codeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        codeTextField.backgroundColor = UIColor.gray
        codeTextField.keyboardType = .numberPad
        setup(codeTextField)
        
        signupButton.backgroundColor = .white
        signupButton.setTitleColor(.black, for: .normal)
        signupButton.backgroundColor = UIColor.white
        signupButton.setTitle("회원가입", for: .normal)
        signupButton.layer.cornerRadius = 5
        
      
       
        extrainfoLabel.text = "추가 정보 입력"
        extrainfoLabel.textColor = .white
        mainSwitch.onTintColor = .orange
        mainSwitch.setOn(false, animated: true)
        

        }
    
    func setup(_ field: UITextField){
        
        field.backgroundColor = UIColor.gray
        field.textAlignment = .center
        
    }
    
    //가입을 위한 조건
    func condition() -> Bool {
    
        if emailTextField.text == "" || passwordTextField.text == "" {
           alert(title: "경고", message: "이메일주소와 패스워드를 기입하시오")
            
        }else if !emailTextField.text!.contains("@"){
            
            alert(title: "경고", message: "이메일 형식이 잘 못 되었습니다")
          
            
        } else if passwordTextField.text!.count < 6 {
            alert(title: "경고", message: "비밀번호를 6자리 이상 기입하시오")
            
        } else if  nicknameTextField.text == "" || locationTextField.text == "" {
            
            alert(title: "경고", message: "빈칸을 모두 입력하시오")
        }
        return true
    }
    
    
    //조건에 불충족 했을 시 나오는 alert
    func alert(title : String, message : String) -> Bool {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in print("클릭함") }))
        present(alert, animated: true)
        return false
    }
    

    
    @IBAction func tapGestureClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    
    @IBAction func rawViewClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    //버튼을 눌렀을 때의 action
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        if(condition() == true) {
        self.performSegue(withIdentifier: "seguefromAtoB", sender: self)
        }
    }
 
}




