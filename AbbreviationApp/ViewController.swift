//
//  ViewController.swift
//  AbbreviationApp
//
//  Created by 정지원 on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblsonAns: UILabel!
    @IBOutlet var lblmomAns: UILabel!
    @IBOutlet var tfsonNum: UITextField!
    @IBOutlet var tfmomNum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblsonAns.text = "분자"
        lblmomAns.text = "분모"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }
  
    @IBAction func abbBtn(_ sender: UIButton) {
        var dvd: Int = 2
        var smallNum: Int = 10
        let slNum = Int(tfsonNum.text ?? "") ?? 1
        let mlNum = Int(tfmomNum.text ?? "") ?? 1
        var sNum = slNum
        var mNum = mlNum
        
        if (sNum < mNum){
            smallNum = sNum
        } else if (mNum < sNum) {
            smallNum = mNum
        } else {
            sNum = 1 ; mNum = 1 ; smallNum = 1
        }
        while dvd <= smallNum {
            if (sNum % dvd == 0 && mNum % dvd == 0) {
                sNum = sNum / dvd
                mNum = mNum / dvd
            } else {
                dvd += 1
            }
        }
        
        lblsonAns.text = String(sNum)
        lblmomAns.text = String(mNum)
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        tfsonNum.text = ""
        tfmomNum.text = ""
    }
    
}

