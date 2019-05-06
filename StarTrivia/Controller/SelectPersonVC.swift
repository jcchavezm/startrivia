//
//  ViewController.swift
//  StarTrivia
//
//  Created by Juan Chavez Montes on 11/5/18.
//  Copyright © 2018 Juan Chavez Montes. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var homeworldButton: UIButton!
    @IBOutlet weak var vehiclesButton: UIButton!
    @IBOutlet weak var starshipsButton: UIButton!
    @IBOutlet weak var filmsButton: UIButton!
    
    var personApi = PersonApi()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func filmsClicked(_ sender: Any) {
        
    }
    
    @IBAction func starshipsClicked(_ sender: Any) {
        
    }
    
    @IBAction func vehiclesClicked(_ sender: Any) {
        
    }
    
    @IBAction func homeworldClicked(_ sender: Any) {
        
    }
    
    @IBAction func randomClicked(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                self.setupView(person: person)
                
            }
        }
    }
    
    func setupView(person: Person) {
        nameLbl.text = person.name
        heightLbl.text = person.height
        massLbl.text = person.mass
        hairLbl.text = person.hair
        birthYearLbl.text = person.birthYear
        genderLbl.text = person.gender
        
        homeworldButton.isEnabled = !person.homeworldUrl.isEmpty
        starshipsButton.isEnabled = !person.starshipUrls.isEmpty
        vehiclesButton.isEnabled = !person.vehicleUrls.isEmpty
        filmsButton.isEnabled = !person.filmUrls.isEmpty
    }
}
