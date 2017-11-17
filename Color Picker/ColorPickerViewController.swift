//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Sean Buchholz on 11/17/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    let initialIndex = 0
    var colors = [Color(colorName: "Red", color: UIColor.red), Color(colorName: "Yellow", color: UIColor.yellow), Color(colorName: "Green", color: UIColor.green), Color(colorName: "Blue", color: UIColor.blue), Color(colorName: "Brown", color: UIColor.brown), Color(colorName: "Orange", color: UIColor.orange), Color(colorName: "Purple", color: UIColor.purple)]
    override func viewDidLoad() { super.viewDidLoad()
        colorPicker.selectRow(initialIndex, inComponent: 0, animated: false)
        let initialColor = colors[initialIndex]
        self.view.backgroundColor = initialColor.color
        colorLabel.text = initialColor.colorName }
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning() }
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 1 }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { return colors[row].colorName }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { return colors.count }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) { let color = colors[row]
        colorLabel.text = color.colorName
        self.view.backgroundColor = color.color } }
