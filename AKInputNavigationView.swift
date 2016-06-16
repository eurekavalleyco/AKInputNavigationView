//
//  AKInputNavigationView.swift
//  pcyp-ios
//
//  Created by Ken M. Haggerty on 6/8/16.
//  Copyright © 2016 Peter Cicchino Youth Project. All rights reserved.
//

// MARK: Imports

import UIKit

// MARK: Protocols

protocol AKInputNavigationViewDelegate: UINavigationBarDelegate {
    func navigationViewDidSelectLeftButton(sender: AKInputNavigationView)
    func navigationViewDidSelectCenterButton(sender: AKInputNavigationView)
    func navigationViewDidSelectRightButton(sender: AKInputNavigationView)
}

// MARK: - AKInputNavigationView

class AKInputNavigationView: UINavigationBar {
    
    // MARK: - Public API
    
    // MARK: • IBOutlets
    
    @IBOutlet var leftButton: UIBarButtonItem?
    @IBOutlet var centerButton: UIButton?
    @IBOutlet var rightButton: UIBarButtonItem?
    
    // MARK: • Variables
    
    // MARK: • Functions
    
    // MARK: - Private API
    
    // MARK: • IBOutlets
    
    // MARK: • Variables
    
    // MARK: • Inits
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    // MARK: • Setup
    
    // MARK: • Delegated
    
    // MARK: • IBActions
    
    @IBAction func touchUpInside(sender: UIButton) {
        if let delegate = self.delegate as? AKInputNavigationViewDelegate {
            if (sender.isEqual(self.leftButton)) {
                delegate.navigationViewDidSelectLeftButton(self)
            }
            else if (sender.isEqual(self.centerButton)) {
                delegate.navigationViewDidSelectCenterButton(self)
            }
            else if (sender.isEqual(self.rightButton)) {
                delegate.navigationViewDidSelectRightButton(self)
            }
        }
    }
    
}
