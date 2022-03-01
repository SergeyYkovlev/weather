//
//  CityTableViewCell.swift
//  weather
//
//  Created by Сергей Яковлев on 01.03.2022.
//

import Foundation
import UIKit
import Framezilla


class CityTableViewCell: UITableViewCell {
    
    private(set) lazy var lonLabel: UILabel = {
       let label = UILabel()
//        label.backgroundColor = .blue
        return label
    }()
    private(set) lazy var latLabel: UILabel = {
       let label = UILabel()
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(lonLabel)
        addSubview(latLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        lonLabel.configureFrame { maker in
            maker.top(inset: 15).left(inset: 300).right(inset: 5).height(20)
        }
        latLabel.configureFrame { maker in
            maker.top(inset: 15).left(inset: 190).right(to: self.lonLabel.nui_left, inset: 10).height(20)
        }
    }
//
//    private lazy var tableViewCellCity: UITableViewCell = {
//        let tableViewCell = UITableViewCell()
//        tableViewCell.backgroundColor = UIColor.red
//        return tableViewCell
//    }()
//
//  
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        tableViewCellCity.configureFrame { maker in
//            maker.top(inset: 0).left(inset: 0).right(inset: 0).height(40)
//
//        }
//    }
    
}
