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
        emailTextField.backgroundColor = UIColor.gray
        emailTextField.keyboardType = .namePhonePad
        emailTextField.textAlignment = .center
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.backgroundColor = UIColor.gray
        passwordTextField.textAlignment = .center
        passwordTextField.keyboardType = .numberPad
        
        
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        nicknameTextField.backgroundColor = UIColor.gray
        nicknameTextField.textAlignment = .center
        nicknameTextField.keyboardType = .namePhonePad
        
        
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        locationTextField.backgroundColor = UIColor.gray
        locationTextField.textAlignment = .center
        locationTextField.keyboardType = .namePhonePad
        
        codeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        codeTextField.backgroundColor = UIColor.gray
        codeTextField.textColor = UIColor.white
        codeTextField.textAlignment = .center
        codeTextField.keyboardType = .numberPad
        
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
    
    func condition() -> Bool {
    
        if emailTextField.text == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: "경고", message: "아이디와 패스워드를 다시 입력하시오", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in print("클릭함") }))
            present(alert, animated: true)
            return false
          
            
        } else if passwordTextField.text!.count < 6 {
            let alert = UIAlertController(title: "경고", message: "패스워드를 6자리 이상 입력하시오", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in print("클릭함") }))
            present(alert, animated: true)
            return false
            
        } else if  nicknameTextField.text == "" || locationTextField.text == "" {
            
            let alert = UIAlertController(title: "경고", message: "빈칸을 모두 입력하시오", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in
                print("클릭함")
            }))
            return false
        }
        return true
    }
    
    
    

    @IBAction func tapGestureClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    
    @IBAction func rawViewClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        if(condition() == true) {
        self.performSegue(withIdentifier: "seguefromAtoB", sender: self)
        }
        //이메일 형식에 맞춰 써야함
        //비밀번호 암호로 나오기
        //비밀번호 길이 맞추기
        // 닉네임, 위치 빈칸이면 안됨
        // 추천코드 숫자로만 입력해야함
        //되돌아 가기 버튼 나오면 넘어가지 않음
       
      

    }
    
    
    
}




