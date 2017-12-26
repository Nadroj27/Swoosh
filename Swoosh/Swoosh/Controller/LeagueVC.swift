//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Jordan Vacca on 24/12/2017.
//  Copyright © 2017 Jordan Vacca. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtn: BorderButton!
    var player: Player!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       player = Player()
    }

    @IBAction func btnLeagueNext(_ sender: Any)
    {
        performSegue(withIdentifier: "SkillSegueVC", sender: self)
    }
   
    @IBAction func OnMansTap(_ sender: Any)
    {
         selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTap(_ sender: Any)
    {
         selectLeague(leagueType: "womens")
    }
    

    @IBAction func onCoedTap(_ sender: Any)
    {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String)
    {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let skillVC = segue.destination as? SkillVC
        {
            skillVC.player = player
        }
    
    }
}
