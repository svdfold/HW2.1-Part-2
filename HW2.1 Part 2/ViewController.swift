//
//  ViewController.swift
//  HW2.1 Part 2
//
//  Created by Mike Albright on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    private var selectedLight = trafficLight.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    @IBAction func didTapNextButton() {
        nextButton.setTitle("NEXT", for: .normal)
            switch selectedLight {
            case .red:
                selectedLight = .yellow
                yellowView.alpha = 1
                redView.alpha = 0.2
                greenView.alpha = 0.2
            case .yellow:
                selectedLight = .green
                greenView.alpha = 1
                yellowView.alpha = 0.2
                redView.alpha = 0.2
            case .green:
                selectedLight = .red
                redView.alpha = 1
                yellowView.alpha = 0.2
                greenView.alpha = 0.2
            }
    }
    
    enum trafficLight {
        case red
        case yellow
        case green
    }
    
    private func setup() {
        nextButton.setTitle("START", for: .normal)
        nextButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 100
        redView.alpha = 0.2
        yellowView.layer.cornerRadius = 100
        yellowView.alpha = 0.2
        greenView.layer.cornerRadius = 100
        greenView.alpha = 0.2
    }
    
    
    
}

