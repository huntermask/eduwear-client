//
//  GroupSummaryView.swift
//  EduwearClient
//
//  Created by Hunter Mask on 5/14/16.
//  Copyright © 2016 Hunter Mask. All rights reserved.
//

import UIKit

@IBDesignable
public class GroupSummaryView: BaseCustomView {
    @IBOutlet public weak var titleLabel: UILabel!
    @IBOutlet public weak var summaryLabel: UILabel!
    @IBOutlet public weak var selectedView: UIImageView!
    
    
    @IBInspectable public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    @IBInspectable public var summary: String? {
        didSet {
            summaryLabel.text = summary
        }
    }
    
    @IBInspectable public var selected: Bool = false {
        didSet {
            selectedView.hidden = !selected
        }
    }
}
