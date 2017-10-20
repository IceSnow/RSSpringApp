//
//  InterfaceController.swift
//  RSSpringApp WatchKit Extension
//
//  Created by Roster on 20/10/2017.
//  Copyright © 2017 Roster. All rights reserved.
//

import WatchKit

class InterfaceController: WKInterfaceController {
    
    @IBOutlet var spriteKitScene: WKInterfaceSKScene!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 8) {
            
            DispatchQueue.main.async {[weak self] in
                self?.spriteKitScene.setHidden(true)
            }
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
        
    }

}
