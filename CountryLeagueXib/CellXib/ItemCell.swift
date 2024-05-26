//
//  ItemCell.swift
//  CountryLeagueXib
//
//  Created by Zahra Alizada on 18.04.24.
//

import UIKit

class ItemCell: UITableViewCell {

    
    @IBOutlet weak private var itemLabel: UILabel!
    @IBOutlet weak private var itemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(dataName: String, dataImage: String) {
        itemLabel.text = dataName
        itemImage.image = UIImage(named: dataImage)
    }
}
