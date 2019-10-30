//
//  ViewController.swift
//  Day3_ios
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource
{
    @IBOutlet weak var pickerCountryStates: UIPickerView!
    @IBOutlet weak var OutputLabel: UILabel!
    
    @IBOutlet weak var pickerCountries: UIPickerView!
   

    let countries = ["India", " Canada" , " Usa", " Russia", "Srilanka" , " Pakistan", "China","Mexico"]
    let curenecy = ["INR", "CAD", "USD","CC", "PR", "MD" ]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.pickerCountries.delegate = self
        self.pickerCountries.dataSource = self
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return self.countries.count;
        }
        else {
            return self.curenecy.count;
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component == 0) {
            return self.countries[row];
        }
        else {
            return self.curenecy[row];
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let v1 = self.countries[row]
        let v2 =  self.curenecy[row]
        
        OutputLabel.text = "\(v1)"  +  " \(v2)"
        //OutputLabel.text = self.countries[row] +  self.curenecy[row]
    }
}










