//
//  ViewController.swift
//  Practic3
//
//  Created by Kirill Ter on 02.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!

    @IBOutlet weak var colorView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Установка начальных значений слайдеров и обновление цвета фона
        updateBackgroundColor()
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // Обновление значений лейблов при изменении слайдера
        updateLabels()
        // Обновление цвета фона
        updateBackgroundColor()
    }

    func updateLabels() {
        // Обновление значений лейблов на основе слайдеров
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

    func updateBackgroundColor() {
        // Обновление цвета фона на основе значений слайдеров
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
