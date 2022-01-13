//
//  SelectLevelViewController.swift
//  100yenQuiz
//
//  Created by 東谷　泰寛 on 2022/01/06.
//

import UIKit

class SelectLevelViewController: UIViewController {
    @IBOutlet var level7Button: UIButton!
    @IBOutlet var level6Button: UIButton!
    @IBOutlet var level5Button: UIButton!
    @IBOutlet var level4Button: UIButton!
    @IBOutlet weak var level3Button: UIButton!
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var level1Button: UIButton!
    
    var selectTag = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        level1Button.layer.borderWidth = 2
        level1Button.layer.borderColor = UIColor.black.cgColor
        
        level2Button.layer.borderWidth = 2
        level2Button.layer.borderColor = UIColor.black.cgColor
        
        level3Button.layer.borderWidth = 2
        level3Button.layer.borderColor = UIColor.black.cgColor
        
        level4Button.layer.borderWidth = 2
        level4Button.layer.borderColor = UIColor.black.cgColor
        
        level5Button.layer.borderWidth = 2
        level5Button.layer.borderColor = UIColor.black.cgColor
        
        level6Button.layer.borderWidth = 2
        level6Button.layer.borderColor = UIColor.black.cgColor
        
        level7Button.layer.borderWidth = 2
        level7Button.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLebel = selectTag
    }
    
    @IBAction func levelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
