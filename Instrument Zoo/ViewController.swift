//
//  ViewController.swift
//  Instrument Zoo
//
//  Created by Ethan Saadia on 1/15/20.
//  Copyright © 2020 Ethan Saadia. All rights reserved.
//

import UIKit
import RealityKit
import Combine

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestureRecognizer()
        
        let xCoordinates: [Float] = [-0.7, 0, 0.7]
    }
}

// MARK: Gesture Handling
extension ViewController {
    func setupGestureRecognizer() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        arView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
       
    }
}

// MARK: File Names
extension ViewController {
    struct InstrumentFiles {
        static let guitar = "guitar.usdz"
        static let trumpet = "trumpet.usdz"
        static let drums = "drums.usdz"
    }
    
    struct AudioFiles {
        static let guitar = "guitar.wav"
        static let trumpet = "trumpet.mp3"
        static let drums = "drums.wav"
        static let all = [guitar, trumpet, drums]
    }
}
