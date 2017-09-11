//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Minni K Ang on 2017-09-06.
//  Copyright © 2017 CreativeIce. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsText: UITextField!
    
    var goalDesc: String!
    var type: GoalType!

    func initData(goalDesc: String, type: GoalType) {
        self.goalDesc = goalDesc
        self.type = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsText.delegate = self
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        if pointsText.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }

    func save(completion:(_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goal = goalDesc
        goal.type = type.rawValue
        goal.target = Int32(pointsText.text!)!
        goal.progress = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
