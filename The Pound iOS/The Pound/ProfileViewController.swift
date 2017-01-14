//
//  ProfileViewController.swift
//  The Pound
//
//  Created by Erin Luu on 2017-01-14.
//  Copyright © 2017 Erin Luu. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var pet: Pet?
    @IBOutlet weak var navTitleLabel: UINavigationItem!
    @IBOutlet weak var petProfileImage: UIImageView!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var petDescriptionView: UITextView!
    @IBOutlet weak var petBreedLabel: UILabel!
    @IBOutlet weak var petTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        guard let pet = pet else {
            return
        }
        navTitleLabel.title? = pet.name!
        petProfileImage.image = pet.image!
        petNameLabel.text = "\(pet.name!) (\(pet.age!))"
        petDescriptionView.text = pet.mainDescription!
        petBreedLabel.text = pet.breed!
        petTypeLabel.text = pet.type!
    }
    @IBAction func dismissView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
