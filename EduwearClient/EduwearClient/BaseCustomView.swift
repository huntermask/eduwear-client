//
//  BaseCustomView.swift
//  EduwearClient
//
//  Created by Hunter Mask on 5/14/16.
//  Copyright © 2016 Hunter Mask. All rights reserved.
//

import UIKit

public class BaseCustomView: UIView {
    var mainView: UIView!
    
    required public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupWithNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupWithNib()
    }
    
    func setupWithNib() {
        let nib = UINib(nibName: self.dynamicType.description().componentsSeparatedByString(".").last!,
                        bundle: NSBundle(forClass: self.dynamicType))
        mainView = nib.instantiateWithOwner(self, options: nil).first as! UIView
        self.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[mainView]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["mainView": mainView]))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[mainView]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["mainView": mainView]))
    }
}
