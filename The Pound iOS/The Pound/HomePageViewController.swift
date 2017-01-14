//
//  HomePageViewController.swift
//  The Pound
//
//  Created by Erin Luu on 2017-01-14.
//  Copyright © 2017 Erin Luu. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class HomePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var objects: Array<Dictionary<String, Any>>?
    var images = [UIImage]()
    @IBOutlet weak var tableView: UITableView!
    var userArray = [Pet]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        Alamofire.request("https://the-pound.herokuapp.com/pets").responseJSON { response in
            
            if let JSON = response.result.value {
                self.objects = JSON as? Array<Dictionary<String, Any>>
                
                for pet in self.objects! {
                    
                    Alamofire.request(pet["profile_picture"] as! String).responseImage { response in
                        debugPrint(response)
                        
                        //print(response.request)
                        //print(response.response)
                        debugPrint(response.result)
                        
                        if let image = response.result.value {
                            self.images.append(image)
                        }
                    }
                    self.tableView.reloadData()
                }
                
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 1
        if objects != nil {
            if objects!.count > 0 {
                count = objects!.count
            }
        }
        return count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomePageTableViewCell
        
        if objects != nil {
            if objects!.count > 0 {
                let pet = objects![indexPath.row]
                cell.petNameLabel.text = pet["name"] as? String
                cell.petDescriptionLabel.text = pet["description"] as? String
                if images.count > 0 {
                    cell.petImageView.image = images[indexPath.row]
                }
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if objects != nil {
            if objects!.count > 0 {
                let pet = objects![indexPath.row]
                let petObject = Pet(
                    name: (pet["name"] as? String)!,
                    description: (pet["description"] as? String)!,
                    breed: (pet["breed"] as? String)!,
                    type: (pet["pet_type"] as? String)!,
                    age: (pet["age"] as? Int)!)
                petObject.image = images[indexPath.row]
                
                let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
                let view = storyboard.instantiateViewController(withIdentifier: "profileView") as! ProfileViewController
                view.pet = petObject
                
                self.present(view, animated: true, completion: nil)
            }
        }
    }
    
}
