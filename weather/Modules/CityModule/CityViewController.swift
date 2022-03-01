//
//  CityViewController.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//

import Foundation
import UIKit
import Framezilla

protocol CityViewOutput {
    func openWeatherViewController(index: Int)
}

class CityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
//    var cityName: [String] = ["Omsk", "Tymen", "Kazan", "Novosibirsk"]
    
    
    var cityData = CityData()
    private let output: CityViewOutput
    
    
    private lazy var tableViewCity: UITableView = { () -> UITableView in
        
        let tableView = UITableView()
        UITableView.Style.grouped
//        tableView.backgroundColor = UIColor.blue
        tableView.backgroundColor = UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.2)
        return tableView
    }()
    

    
    
    init(output: CityViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
    
        view.addSubview(tableViewCity)
        tableViewCity.dataSource = self
        tableViewCity.delegate = self
//        tableViewCity.register(CityTableViewCell.self, forCellWithReuseIdentifier: "CityTableViewCell")
//        tableViewCity.register(UINib(nibName: "CityTableViewCell", bundle: nil), forCellReuseIdentifier: "CityTableViewCell")
        self.tableViewCity.register(CityTableViewCell.self, forCellReuseIdentifier: "CityTableViewCell")
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableViewCity.configureFrame { maker in
            maker.top().bottom().left().right()
        }
        
//        tableViewCellCity.configureFrame { maker in
//            maker.top(inset: 0).left(inset: 0).right(inset: 0).height(40)
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cityData.cityName.count
//        let cell = tableView.dequeueReusableCell(withIdentifier: CityTableViewCell, for: IndexPath) as? CityTableViewCell
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as? CityTableViewCell
        cell?.textLabel?.text = self.cityData.cityName[indexPath.row]
        cell?.lonLabel.text = self.cityData.cityLon[indexPath.row]
        cell?.latLabel.text = self.cityData.cityLat[indexPath.row]
        return(cell!)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.openWeatherViewController(index: indexPath.row)
    }
    
    }

