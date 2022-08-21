//
//  SecondViewController.swift
//  LoginInApp
//
//  Created by MacBook Pro on 21.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var moon2: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.source as? ThirdViewController else { return }
        thirdVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nameLabel.text = "\(user.name)"
        
    }
    
    @IBAction func nextButton() {
        performSegue(withIdentifier: "showThirdScreen", sender: nil)
    }
    
    

}
