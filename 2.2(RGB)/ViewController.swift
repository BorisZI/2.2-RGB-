//
//  ViewController.swift
//  2.2(RGB)
//
//  Created by Boris Zitsermsn on 29.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewBoard: UIView!
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.layer.cornerRadius = 20
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        viewBoard.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    private func textForLabel (from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    @IBAction func redBalance() {
        redLabel.text = textForLabel(from: redSlider)
    }
    
    @IBAction func greenBalance() {
        greenLabel.text = textForLabel(from: greenSlider)
    }
    
    @IBAction func blueBalace() {
        blueLabel.text = textForLabel(from: blueSlider)
    }
    @IBAction func rgbView(_ sender: UISlider) {
        viewBoard.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue:CGFloat(blueSlider.value),
            alpha: 1
            )
    }
}
    



