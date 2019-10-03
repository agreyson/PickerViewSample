//
//  ViewController.swift
//  PickerViewSample
//
//  Created by agreyson on 9/18/19.
//  Copyright © 2019 agreyson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else if component == 1 {
            return 20
        } else if component == 2 {
            return 40
        } else {
            return 100
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "First \(row)"
        } else if component == 1 {
            return "Second \(row)"
        } else if component == 2 {
            return "Third \(row)"
        } else {
            return "Fourth \(row)"
        }
    }
}

