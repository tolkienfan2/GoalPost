//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Minni K Ang on 2017-09-06.
//  Copyright © 2017 CreativeIce. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsText: UITextField!
    
    var goal: String!
    var type: GoalType!

    func initData(goal: String, type: GoalType) {
        self.goal = goal
        self.type = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsText.delegate = self
        createGoalBtn.bindToKeyboard()
    }

    @IBAction func createGoalBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
