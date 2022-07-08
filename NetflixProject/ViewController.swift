//
//  ViewController.swift
//  NetflixProject
//
//  Created by 나리강 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var twoImageView: UIImageView!
    @IBOutlet weak var threeImageView: UIImageView!
    @IBOutlet weak var playbuttonImageVIew: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        
       
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))
                        playbuttonImageVIew.addGestureRecognizer(tapGR)
                        playbuttonImageVIew.isUserInteractionEnabled = true
                }
                @objc func imageTapped(sender: UITapGestureRecognizer) {
                        if sender.state == .ended {
                                //action after push -> 4이미지 바꾸기
                            imageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
                            twoImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
                            threeImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
                            posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
                    
                            
                            
                        }
                    
                    
        
    }
    
    func setup(){
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 5.0
        imageView.layer.borderColor = UIColor.black.cgColor
        
        twoImageView.layer.cornerRadius = 50
        twoImageView.clipsToBounds = true
        twoImageView.layer.borderWidth = 5.0
        twoImageView.layer.borderColor = UIColor.black.cgColor
        
        threeImageView.layer.cornerRadius = 50
        threeImageView.clipsToBounds = true
        threeImageView.layer.borderWidth = 5.0
        threeImageView.layer.borderColor = UIColor.black.cgColor
    }
    
    
    
    
    
}


