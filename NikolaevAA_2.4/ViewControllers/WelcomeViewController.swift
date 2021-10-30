//
//  WelcomeViewController.swift
//  NikolaevAA_2.4
//
//  Created by Anton Nikolaev on 30.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let dataInfo = Registration()
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Привет " + dataInfo.name
    }
    


}
