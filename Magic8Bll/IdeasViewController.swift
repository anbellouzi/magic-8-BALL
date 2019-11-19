//
//  ViewController.swift
//  Magic8Bll
//
//  Created by Anas on 11/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class IdeasViewController: UIViewController {
    
    // MARK: - Properties
    let companies = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    
    let ideas = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    
    @IBOutlet weak var ideaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func generateIdea() {
        let companiesRandomIndex = Int.random(in: 0..<companies.count)
        let ideasRandomIndex = Int.random(in: 0..<ideas.count)
        
        companyLabel.text = companies[companiesRandomIndex]
        ideaLabel.text = ideas[ideasRandomIndex]
        
        
    }
    
   
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateIdea()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateIdea()
    }
    
}

