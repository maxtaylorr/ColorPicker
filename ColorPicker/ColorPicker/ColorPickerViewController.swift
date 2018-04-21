//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Max Taylor on 4/20/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    
    
    var colors = [Color]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colors = [Color(colorName: "red", uiColor: UIColor.red),
                  Color(colorName: "orange", uiColor: UIColor.orange),
                  Color(colorName: "yellow", uiColor: UIColor.yellow),
                  Color(colorName: "green", uiColor: UIColor.green),
                  Color(colorName: "blue", uiColor: UIColor.blue),
                  Color(colorName: "purple", uiColor: UIColor.purple),
                  Color(colorName: "brown", uiColor: UIColor.brown)]
        
        self.colorPicker.dataSource = self;
        self.colorPicker.delegate = self;
        
        self.view.backgroundColor = colors[0].uiColor
        colorLabel.text = colors[0].colorName
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in colorPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ colorPicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ colorPicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorName
    }
    
    func pickerView(_ colorPicker: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        /* if(row == 0) {
            self.view.backgroundColor = colors[0].uiColor
            colorLabel.text = colors[0].colorName
        }
        else if(row == 1) {
            self.view.backgroundColor = colors[1].uiColor
            colorLabel.text = colors[1].colorName
        }
        else if(row == 2) {
            self.view.backgroundColor = colors[2].uiColor
            colorLabel.text = colors[2].colorName
        }
        else if(row == 3) {
            self.view.backgroundColor = colors[3].uiColor
            colorLabel.text = colors[3].colorName
        }
        else if(row == 4) {
            self.view.backgroundColor = colors[4].uiColor
            colorLabel.text = colors[4].colorName
        }
        else if(row == 5) {
            self.view.backgroundColor = colors[5].uiColor
            colorLabel.text = colors[5].colorName
        }
        else {
            self.view.backgroundColor = colors[6].uiColor
            colorLabel.text = colors[6].colorName
        } */
        
        switch row {
        case 0:
            self.view.backgroundColor = colors[0].uiColor
            colorLabel.text = colors[0].colorName
        case 1:
            self.view.backgroundColor = colors[1].uiColor
            colorLabel.text = colors[1].colorName
        case 2:
            self.view.backgroundColor = colors[2].uiColor
            colorLabel.text = colors[2].colorName
        case 3:
            self.view.backgroundColor = colors[3].uiColor
            colorLabel.text = colors[3].colorName
        case 4:
            self.view.backgroundColor = colors[4].uiColor
            colorLabel.text = colors[4].colorName
        case 5:
            self.view.backgroundColor = colors[5].uiColor
            colorLabel.text = colors[5].colorName
        case 6:
            self.view.backgroundColor = colors[6].uiColor
            colorLabel.text = colors[6].colorName
            
        default:
            self.view.backgroundColor = colors[0].uiColor
            colorLabel.text = colors[0].colorName
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
