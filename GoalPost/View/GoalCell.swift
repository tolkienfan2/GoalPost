//
//  GoalCell.swift
//  GoalPost
//
//  Created by Minni K Ang on 2017-09-06.
//  Copyright © 2017 CreativeIce. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var goalCompleteView: UIView!
    
    
    func configureCell(goal: Goal) {
        self.goalLbl.text = goal.goal
        self.typeLbl.text = goal.type
        self.progressLbl.text = String(goal.progress)
        
        if goal.progress == goal.target {
            self.goalCompleteView.isHidden = false
        } else {
            self.goalCompleteView.isHidden = true
        }
    }
}
