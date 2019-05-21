//
//  HomeNavigationController.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

//point of entry
class HomeNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Navigation Logic to handle onboarding
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "hasViewedOnboarding") == false {
            DispatchQueue.main.async {
                let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "OnboardingViewController") as! OnboardingViewController
                self.present(vc, animated: false, completion: nil)
            }
        }
    }
    
}
