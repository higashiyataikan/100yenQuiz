//
//  ScoreViewController.swift
//  100yenQuiz
//
//  Created by 東谷　泰寛 on 2022/01/05.
//

import UIKit
import GoogleMobileAds

class ScoreViewController: UIViewController {
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var shareButton: UIButton!
    @IBOutlet var returnTopButton: UIButton!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(correct)問正解！"
        
        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.black.cgColor
        returnTopButton.layer.borderWidth = 2
        returnTopButton.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
         }
    
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activtyItems = ["\(correct)問正解しました。","#中学生の為の社会総集編"]
        let activtyVC = UIActivityViewController(activityItems: activtyItems, applicationActivities: nil)
        self.present(activtyVC, animated: true)
    }
    
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
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
