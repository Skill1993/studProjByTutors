//
//  LeagueVC.swift
//  app-swoosh-by-zna
//
//  Created by Никита Журавлев on 05.11.2017.
//  Copyright © 2017 Никита Журавлев. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func coEdTapped(_ sender: Any) {
        selectLeague(leagueType: "co-ed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
