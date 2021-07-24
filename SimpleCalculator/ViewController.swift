//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by paslang on 24/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWidth: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateValue(_ sender: UIButton) {
        if let width = Double(inputWidth.text ?? "0"), let height = Double(inputHeight.text ?? "0"){
            labelResult.text = String(width * height)
        }else{
            labelResult.text = "Invalid input"
        }
    }
    @IBAction func resetValeu(_ sender: UIButton) {
        inputHeight.text = ""
        inputWidth.text = ""
        labelResult.text = "Result"
    }
}

