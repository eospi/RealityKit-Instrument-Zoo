//
//  InstrumentEntity.swift
//  Instrument Zoo
//
//  Created by Ethan Saadia on 1/15/20.
//  Copyright © 2020 Ethan Saadia. All rights reserved.
//

import RealityKit

class InstrumentEntity: Entity {
    
    required init() {
        super.init()
    }
    
    convenience init(modelEntity: ModelEntity) {
        self.init()
    }
    
    func scale() {
        var scaleTransform = self.transform
        scaleTransform.scale = [1.5, 1.5, 1.5]
    }
    
    func shrink() {
        var scaleTransform = self.transform
        scaleTransform.scale = [0.66, 0.66, 0.66]
        scaleTransform.translation = .zero
    }
    
    func makeSound() {
        
    }
}
