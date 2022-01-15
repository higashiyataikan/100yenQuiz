//
//  ExplanationViewController.swift
//  100yenQuiz
//
//  Created by 東谷　泰寛 on 2022/01/11.
//

import UIKit
import GoogleMobileAds

class ExplanationViewController: UIViewController {
    @IBOutlet var explanationLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    var quizArray: [String] = []
    var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        explanationLabel.text = quizArray[0]
        answerLabel.text = quizArray[(Int(quizArray[1]) ?? 0)+1]
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        bannerView.adUnitID = "ca-app-pub-2873652542944936/8940277360"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        addBannerViewToView(bannerView)

    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func topButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
}

extension ExplanationViewController {
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: flag, completion: completion)
        guard let presentationController = presentationController else {
            return
        }
        presentationController.delegate?.presentationControllerDidDismiss?(presentationController)
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: view.safeAreaLayoutGuide,
                                attribute: .bottom,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }
}
