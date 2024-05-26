//
//  ClubController.swift
//  CountryLeagueXib
//
//  Created by Zahra Alizada on 18.04.24.
//

import UIKit

class ClubController: UIViewController {

    @IBOutlet weak private var clubTableView: UITableView!

    var league: League?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Clubs"
        clubTableView.register(UINib(nibName: "\(ItemCell.self)", bundle: nil), forCellReuseIdentifier: "\(ItemCell.self)")
    }
}

extension ClubController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        league?.clubs.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = clubTableView.dequeueReusableCell(withIdentifier: "\(ItemCell.self)") as! ItemCell
        let data = league?.clubs[indexPath.row]
        cell.configure(dataName: data?.name ?? "", dataImage: data?.image ?? "")
        return cell
    }
}

extension ClubController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        76
    }
}
