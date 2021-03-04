//
//  ViewController.swift
//  ios 13610343 week4 project1
//
//  Created by ICT-MAC on 17/8/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputPrice: UITextField!
    
    @IBOutlet weak var displayDiscount: UILabel!
    
    @IBOutlet weak var displayFinalPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    
    func calDiscount(price:Float,salePercent:Int)->Float{
        //step1 input: price ราคา salePercent  ลดกี่เปอร์เซ็น
        //var discount = price*(Float(salePercent)/100)
    
    return price*(Float(salePercent)/100)
        //100 x (2/100)
    //return discount
    }//func body
    
    @IBAction func discountBtpressed5(sender: UIButton) {
        //var price = inputPrice.text
         print(sender.tag)
        
//            if let priceFromInput = inputPrice.text{
//            //ทำงาน
//            //convert string to float
//            let floatPrice = (priceFromInput as NSString).floatValue
//            //call func discount
//            let discount = calDiscount(price: floatPrice, salePercent: 5)
//
//            let largeNumber0 = discount
//            let numberFormatter0 = NumberFormatter()
//            numberFormatter0.numberStyle = .decimal
//            let formattedNumber0 = numberFormatter0.string(from: NSNumber(value:largeNumber0))
//            if let b = formattedNumber0{
//            displayDiscount.text = "\(b)"
//            }
//
//            let largeNumber = floatPrice-discount
//            let numberFormatter = NumberFormatter()
//            numberFormatter.numberStyle = .decimal
//            let formattedNumber = numberFormatter.string(from: NSNumber(value:largeNumber))
//
//            if let a = formattedNumber{
//            displayFinalPrice.text = "\(a)"
//                }//end if let
//            }//end if
        }//func
        
    
    
    @IBAction func discountBtPressed(_ sender: UIButton) {
        print(sender.tag)
         var percent = sender.tag
//        var percent : Int
//        if sender.tag == 5 {
//            percent = 5
//        }
//        else if sender.tag == 10 {
//            percent = 10
//        }
//        else if sender.tag == 20 {
//            percent = 20
//        }
        if let priceFromInput = inputPrice.text{
           let floatPrice = (priceFromInput as NSString).floatValue
           let discount = calDiscount(price: floatPrice, salePercent: percent)
            
            var largeNumber = discount
            var numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            var formattedNumber = numberFormatter.string(from: NSNumber(value:largeNumber))
            
            if let numberDisplay = formattedNumber {
                print("ค่าที่แสดงในส่วนลด\(numberDisplay)")
                displayDiscount.text = "\(numberDisplay)"
            }
            largeNumber = floatPrice - discount
            formattedNumber = numberFormatter.string(from: NSNumber(value:largeNumber))
            
            if let numberDisplay = formattedNumber {
                print("ค่าที่แสดงในส่วนลด\(numberDisplay)")
                displayFinalPrice.text = "\(numberDisplay)"
            }
   
        }//end if let priceFromInput
    }//end func discountBtPressed
}//end class
