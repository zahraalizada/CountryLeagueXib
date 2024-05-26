//
//  LeagueController.swift
//  CountryLeagueXib
//
//  Created by Zahra Alizada on 18.04.24.
//

import UIKit

class LeagueController: UIViewController {
    
    @IBOutlet weak private var leagueTableView: UITableView!
    
    var country: Country? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Leagues"
        leagueTableView.register(UINib(nibName: "\(ItemCell.self)", bundle: nil), forCellReuseIdentifier: "\(ItemCell.self)")
    }
}

extension LeagueController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        country?.leagues.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = leagueTableView.dequeueReusableCell(withIdentifier: "\(ItemCell.self)") as! ItemCell
        let data = country?.leagues[indexPath.row]
        cell.configure(dataName: data?.name ?? "", dataImage: data?.image ?? "")
        return cell
    }
}

extension LeagueController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(identifier: "\(ClubController.self)") as! ClubController
        controller.league = country?.leagues[indexPath.row]
        navigationController?.show(controller, sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        76
    }
}
