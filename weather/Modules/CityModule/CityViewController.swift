//
//  CityViewController.swift
//  weather
//
//  Created by Сергей Яковлев on 28.02.2022.
//

import Foundation
import UIKit

protocol CityViewOutput {
    
}

class CityViewController: UIViewController {
    var cityData = CityData()
    private let output: CityViewOutput
    
    init(output: CityViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
}
