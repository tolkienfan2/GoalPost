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
    
    
    func configureCell(goal: Goal) {
        self.goalLbl.text = goal.goal
        self.typeLbl.text = goal.type
        self.progressLbl.text = String(goal.progress)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
