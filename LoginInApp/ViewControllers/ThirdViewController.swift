//
//  ThirdViewController.swift
//  SmileScreen
//
//  Created by MacBook Pro on 21.08.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet var moon3: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fourthVC = segue.source as? FourthViewController else { return }
        fourthVC.user = user
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //fullNameLabel.text = "\(user.fullName)"
        
    }
    
    @IBAction func nextThirdButton() {
        performSegue(withIdentifier: "showFourthScreen", sender: nil)
    }
    
   

}
