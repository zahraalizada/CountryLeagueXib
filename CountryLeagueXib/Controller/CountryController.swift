//
//  CountryController.swift
//  CountryLeagueXib
//
//  Created by Zahra Alizada on 18.04.24.
//

import UIKit

class CountryController: UIViewController {
    
    @IBOutlet weak private var countryTableView: UITableView!
    
    var countries = [Country]()
    let countryManager = CountryManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Countries"
        countries = countryManager.getItems()
        countryTableView.register(UINib(nibName: "\(ItemCell.self)", bundle: nil), forCellReuseIdentifier: "\(ItemCell.self)")
    }
}

extension CountryController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "\(ItemCell.self)") as! ItemCell
        let data = countries[indexPath.row]
        cell.configure(dataName: data.name, dataImage: data.image)
        return cell
    }
}

extension CountryController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(identifier: "\(LeagueController.self)") as! LeagueController
        controller.country = countries[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        76
    }
}
