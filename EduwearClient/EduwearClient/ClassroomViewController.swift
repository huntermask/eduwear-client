//
//  ClassroomViewController.swift
//  EduwearClient
//
//  Created by Hunter Mask on 5/14/16.
//  Copyright © 2016 Hunter Mask. All rights reserved.
//

import UIKit

public class ClassroomViewController: UIViewController, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var teacherImageView: UIImageView!
    @IBOutlet weak var teacherTitleLabel: UILabel!
    @IBOutlet weak var classroomSummaryLabel: UILabel!
    @IBOutlet weak var addGroupButton: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        
        makeCircular(teacherImageView)
    }
    
    public override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    public func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        makeCircular(cell.imageView)
    }
    
    func makeCircular(imageView: UIImageView?) {
        imageView?.layer.cornerRadius = (imageView?.frame.size.height ?? 0) / 2
        imageView?.layer.masksToBounds = true
        imageView?.layer.borderColor = UIColor.whiteColor().CGColor
        imageView?.layer.borderWidth = 1.0
        imageView?.layer.shadowRadius = 1.0
        imageView?.layer.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.7).CGColor
    }
}
