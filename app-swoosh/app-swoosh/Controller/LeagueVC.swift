//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Robert Haddad on 11/19/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    @IBAction func onMensPressed(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensPressed(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedPressed(_ sender: Any) {
        selectLeague(leagueType: "coed")
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
