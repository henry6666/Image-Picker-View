//
//  ViewController.swift
//  ImagePickerView
//
//  Created by Henry Aguinaga on 2016-11-29.
//  Copyright © 2016 Henry Aguinaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var pickerViewOutlet: UIPickerView!
    
    var listOfPictures : [String] = ["win1","win2","win3","win4","win5","win6","win6","win8","win9"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerViewOutlet.dataSource = self
        self.pickerViewOutlet.delegate = self
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOfPictures.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listOfPictures[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            imageViewOutlet.image = #imageLiteral(resourceName: "win1")
        case 1:
            imageViewOutlet.image = #imageLiteral(resourceName: "win2")
        case 2:
            imageViewOutlet.image = #imageLiteral(resourceName: "win3")
        case 3:
            imageViewOutlet.image = #imageLiteral(resourceName: "win4")
        case 4:
            imageViewOutlet.image = #imageLiteral(resourceName: "win5")
        case 5:
            imageViewOutlet.image = #imageLiteral(resourceName: "win6")
        case 6:
            imageViewOutlet.image = #imageLiteral(resourceName: "win7")
        case 7:
            imageViewOutlet.image = #imageLiteral(resourceName: "win8")
        case 8:
            imageViewOutlet.image = #imageLiteral(resourceName: "win9")
        default:
            break
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let labelText = NSMutableAttributedString(string: listOfPictures[row], attributes: [NSFontAttributeName : UIFont(name: "Avenir-Heavy", size: 25)!])
        
        pickerLabel.attributedText = labelText
        pickerLabel.textAlignment = .center
        return pickerLabel
    }
    

}

