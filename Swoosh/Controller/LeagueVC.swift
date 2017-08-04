//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Jeremy Clerico on 04/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    //Declare Player
    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create new player
        player = Player()
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague (leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    //USE TO PASS DATA TO ANOTHER VC.
    //Same code if you had multiple segues from one vc to many others.
    //IMPORTANT: prepare for segue will ALWAYS be called BEFORE viewDidLoad in the DESITNATION VIEWCONTROLLER! .Therefore you can always guarantee data will be available in viewDidLoad if you initialized it.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Using if let sequence - It will try and run an operation (here assign the  destination ViewController into skillVC constant). If it succeeds, it will execute inside the code block. If fails, the if statement fails.
        //If succeeds, it grabs the code from the destination VC and stores it in memory in the skillVC constant.
        if let skillVC = segue.destination as? SkillVC {
            //Passing the player from LeagueVC to SkilLVC
            skillVC.player = player
        }
    }
}
