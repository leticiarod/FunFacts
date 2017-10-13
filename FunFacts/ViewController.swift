//
//  ViewController.swift
//  FunFacts
//
//  Created by Leticia Rodriguez on 3/12/17.
//  Copyright © 2017 Leticia Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactsButton: UIButton!
    @IBOutlet weak var funFactsLabel: UILabel!
    //let facts = ["leti","nacho"]
    let factProvider = FactProvider()
    let colorsProvider = ColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactsLabel.text = factProvider.facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func showFact() {
        
        // print("hola")
        // funFactsLabel.text = "another interesting fact"
        
        funFactsLabel.text = factProvider.randomFacts()
        //let newColor = UIColor(colorLiteralRed: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0)
        let newColor = colorsProvider.randomColors()
        view.backgroundColor = newColor
        funFactsButton.tintColor = newColor
    }


}

