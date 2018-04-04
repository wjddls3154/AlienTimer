//
//  ViewController.swift
//  AlienTimer
//
//  Created by D7702_10 on 2018. 4. 4..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var counter = 1
    var myTimer = Timer()
    var check = true
    var checked = true
    //타이머 객체 생성
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
              imageCounter.text = String(counter)
        myImageView.image = UIImage(named: "frame1.png")
    }

    @IBAction func play(_ sender: Any) {
        if checked == true {
            
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(doAnimation) , userInfo: nil, repeats: true)
            checked = false
        } else if checked == false{
            myTimer.invalidate()
            checked = true
            
            
        }
        //타이머 실행
    }
    

    @objc func doAnimation(){
        if counter == 5 {
            check = false
        }else if counter == 1 {
            check = true
        }
        if check == true {
            counter = counter + 1
        }else {
            counter = counter - 1
        }
        
        
        
        //타이머에 의해 동적으로 호출되는 함수
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
    
    

}

