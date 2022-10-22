//
//  ViewController.swift
//  svetofortest
//
//  Created by Mac on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButon: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 76
        yellowView.layer.cornerRadius = 76
        greenView.layer.cornerRadius = 76
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        redView.isOpaque = true
        yellowView.isOpaque = true
        greenView.isOpaque = true
    }

    @IBAction func startButtonTapped() {
        
        
        if redView.isOpaque {
            greenView.alpha = 0.15
            redView.alpha = 1
            startButon.setTitle("next", for: .normal)
            redView.isOpaque.toggle()
            yellowView.isOpaque = true
            
        }else if yellowView.isOpaque{
            redView.alpha = 0.15
            yellowView.alpha = 1
            startButon.setTitle("next", for: .normal)
            yellowView.isOpaque.toggle()
            greenView.isOpaque = true
        } else if greenView.isOpaque {
            yellowView.alpha = 0.15
            greenView.alpha = 1
            startButon.setTitle("next", for: .normal)
            greenView.isOpaque.toggle()
            redView.isOpaque = true
        }
    }
}



