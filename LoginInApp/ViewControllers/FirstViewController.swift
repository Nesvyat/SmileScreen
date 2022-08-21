//
//  FirstViewController.swift
//  LoginInApp
//
//  Created by MacBook Pro on 21.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var smileLabel: UILabel!
    
    private let user = User.returningModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.source as? SecondViewController else { return }
        secondVC.user = user
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func showNextScreenButton() {
        performSegue(withIdentifier: "showSecondScreen", sender: nil)
    }
    

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        smileLabel.text = "🌞"
}
}
