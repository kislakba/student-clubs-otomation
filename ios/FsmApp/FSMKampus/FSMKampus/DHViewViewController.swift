//
//  DHViewViewController.swift
//  FSMKampus
//
//  Created by Mert Agcakoyun on 6.12.2018.
//  Copyright © 2018 Mert Agcakoyun. All rights reserved.
//

import UIKit

class DHViewViewController: UIViewController {

    @IBOutlet weak var menuTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passData()
        

    }
    
    func date() -> String{
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        return result
    }
    func passData(){
        let result = date()
        var isContain = false
        let jsonuRL = "https://sheets.googleapis.com/v4/spreadsheets/1kgxnFxb9pOkPvKHMAqsMFbh5LrMYTrftUKyJQuBkR1o/values/yemekhane?key=AIzaSyDaIfxBmmFG875woD1RuKYugqCy5ZWMF48"
        guard let url = URL(string: jsonuRL) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            do{
                let menu = try JSONDecoder().decode(Menu.self, from: data!)
                
                DispatchQueue.main.async {
                    for i in 0..<menu.values.count{
                        for j in 0..<menu.values[0].count{
                            if result == menu.values[i][0]{
                                self.menuTextView.text += ("\(menu.values[i][j]) \n")
                                isContain = true
                            }
                        }
                    }
                    if isContain == false{
                        self.menuTextView.text += "Bugün yemekhane kapalı!"
                    }
                }
                
                
                
            }catch let err{
                print(err)
                
            }
            }.resume()
        
        
    }

    
    

}
