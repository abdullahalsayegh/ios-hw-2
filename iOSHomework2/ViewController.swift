//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(array: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNameEmoji(array: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter(array: [String]) -> String{
        
        
        var result = ""
                
        for i in array
        {
             result = result + i.prefix(1)
            
        }
        return result
    }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func secretNameEmoji(array: [String]) -> String {
        
        var letterEmoji = ["a":"👨🏻‍🦳" , "b": "🦊" , "c": "✏️" , "d": "🤡" ,"e": "🤕" , "f":"🤖", "i": "😺", "h": "🤠" , "k": "😽" , "j": "💀", "m": "👾", "l": "👁", "o": "🧠", "n": "🦷", "q": "👩🏼‍🍳", "p": "👓", "s": "🐸", "r": "🐵", "u": "🦁", "t": "🐥", "w": "🐳", "v": "🐡", "y": "🐙", "x": "🐎", "z": "🦍"]
        
        var emojiResults = ""
        
        var names = ""
        
        for m in array {
            
            names = String(m.prefix(1))
            
            for x in letterEmoji {
                
                if names == x.key {
                    
                    emojiResults += x.value
                    
                }
                
            }
            
        }
        return emojiResults
       
        }
        

    
    // MARK: -   النهاية
    
}

