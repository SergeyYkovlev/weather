//
//  ViewController.swift
//  weather
//
//  Created by Сергей Яковлев on 18.02.2022.
//

import UIKit
import Framezilla
class ViewController: UIViewController {
    
    let cloudImage = UIImage(named: "Image")
    
    private lazy var firstView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 114 / 255.0, green: 144 / 255.0, blue: 185 / 255.0, alpha: 1)
        return view
    }()
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = UIColor(red: 114 / 255.0, green: 144 / 255.0, blue: 185 / 255.0, alpha: 1)
//        label.backgroundColor = UIColor.systemPurple
        label.text = "Омск"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    private lazy var changeСityButton: UIButton = {
        let button = UIButton()
        button.configuration = . plain()
//        button.configuration?.background.backgroundColor = UIColor(red: 114 / 255.0, green: 144 / 255.0, blue: 185 / 255.0, alpha: 1)
//        button.configuration?.background.backgroundColor = UIColor.systemPurple
        button.configuration?.title = "Сменить город"
        var attText = AttributedString.init("Сменить город")
        attText.font = UIFont.systemFont(ofSize: 12)
        button.configuration?.attributedTitle = attText
        button.tintColor = .white
        return button
    }()
    
    private lazy var locationButton: UIButton = {
      let button = UIButton()
        button.configuration = .plain()
//        button.configuration?.background.backgroundColor = UIColor.systemPurple
//       button.configuration?.title = "Мое местоположение"
        var attText = AttributedString.init("Мое местоположение")
        attText.font = UIFont.systemFont(ofSize: 12)
        button.configuration?.attributedTitle = attText
        button.tintColor = .white
        
        return button
    }()
    private lazy var infoWeatherView: UIView = {
        let view = UIView()
//        view.backgroundColor = .systemPink
        return view
    }()
    
    private lazy var infoWeatherImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Image")
        return view
    }()
    
    private lazy var infoWeatherDegreesLabel: UILabel = {
        let label = UILabel()
        label.text = "14"
        label.textColor = .white
//        label.backgroundColor = .systemYellow
        label.font = UIFont.systemFont(ofSize: 70)
        return label
    }()
    
    private lazy var indoWeatherPrecipitationLabel: UILabel = {
       let label = UILabel()
        label.text = "Дождь"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 40)
//        label.backgroundColor = .systemYellow
        return label
    }()
    
    private lazy var headingWindlabel: UILabel = {
        let label = UILabel()
        label.text = "Ветер"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .white.withAlphaComponent(0.4)
//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var windLablel: UILabel = {
        let label = UILabel()
        label.text = "sgdfsgsd"
        label.font = UIFont.systemFont(ofSize: 23)
        label.textColor = .white
//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var headingHumidityLabel: UILabel = {
       let label = UILabel()
        label.text = "Влажность"
        label.textColor = .white.withAlphaComponent(0.4)
        label.font = UIFont.systemFont(ofSize: 17)
//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var humidityLabel: UILabel = {
       let label = UILabel()
        label.text = "sgfdsgsgs"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 23)
//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var headingPressureLabel: UILabel = {
       let label = UILabel()
        label.text = "Давление"
        label.textColor = .white.withAlphaComponent(0.4)
        label.font = UIFont.systemFont(ofSize: 17)
//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var pressureLabel: UILabel = {
       let label = UILabel()
        label.text = "dgfghdfgh"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 23)
//        label.backgroundColor = .systemPurple
        return label
        
    }()
    
    private lazy var headingChanceOfRainLabel: UILabel = {
       let label = UILabel()
        label.text = "Вероятность дождя"
        label.textColor = .white.withAlphaComponent(0.4)
        label.font = UIFont.systemFont(ofSize: 17)

//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var chanceOfRainLabel: UILabel = {
       let label = UILabel()
        label.text = "gsgsdgsfs"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 23)
//        label.backgroundColor = .systemPurple
        return label
    }()
    
    private lazy var temperatureUnitsSegmentedControl: UISegmentedControl  = {
        var segmentedControl = UISegmentedControl(items: ["C","F"])
        segmentedControl.backgroundColor = UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.2)
        segmentedControl.selectedSegmentTintColor = .systemGray4.withAlphaComponent(0.6)
        segmentedControl.setTitle("B", forSegmentAt: 0)
        segmentedControl.layer.borderColor = UIColor.red.cgColor
        segmentedControl.tintColor = .yellow
        segmentedControl.selectedSegmentIndex = 0
//        segmentControl.borderColor = .clear
//          segmentControl.selectedLabelColor = .red
//          segmentControl.unselectedLabelColor = .red
//          segmentControl.backgroundColor = .lightGray
//          segmentControl.thumbColor = .black
        return segmentedControl
        
    }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(firstView)
        firstView.addSubview(cityLabel)
        firstView.addSubview(changeСityButton)
        firstView.addSubview(locationButton)
        firstView.addSubview(infoWeatherView)
        infoWeatherView.addSubview(infoWeatherImageView)
        infoWeatherView.addSubview(infoWeatherDegreesLabel)
        infoWeatherView.addSubview(indoWeatherPrecipitationLabel)
        firstView.addSubview(headingWindlabel)
        firstView.addSubview(windLablel)
        firstView.addSubview(headingHumidityLabel)
        firstView.addSubview(humidityLabel)
        firstView.addSubview(headingPressureLabel)
        firstView.addSubview(pressureLabel)
        firstView.addSubview(headingChanceOfRainLabel)
        firstView.addSubview(chanceOfRainLabel)
        firstView.addSubview(temperatureUnitsSegmentedControl)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        firstView.configureFrame { maker in
            maker.top().bottom().left().right()
        }
        
        cityLabel.configureFrame { maker in
           maker.top(inset: 85).left(inset: 30).width(90).height(40)
        }
        
        changeСityButton.configureFrame { maker in
            maker.top(to: self.cityLabel.nui_bottom, inset: 10).left(inset: 17).width(150).height(30)
        }
        
        locationButton.configureFrame { maker in
            maker.top(inset: 135).left(to: self.changeСityButton.nui_right, inset: 80).width(160).height(30)
        }
        
        temperatureUnitsSegmentedControl.configureFrame { maker in
            maker.top(inset: 85).left(to: self.changeСityButton.nui_right, inset: 140).width(90).height(40)
        }
        
        infoWeatherView.configureFrame { maker in
            maker.top(inset: 250).left(inset: 55).width(300).height(240)
        }
        
        infoWeatherImageView.configureFrame { maker in
            maker.edges(top: 50, left: 20, bottom: 110, right: 180)
        }
        
        infoWeatherDegreesLabel.configureFrame { maker in
            maker.edges(top: 50, left: 150, bottom: 90, right: 50)
        }
        
        indoWeatherPrecipitationLabel.configureFrame { maker in
            maker.edges(top: 170, left: 50, bottom: 20, right: 50)
        }
        
        headingWindlabel.configureFrame { maker in
            maker.top(to: self.infoWeatherView.nui_bottom, inset: 100).left(inset: 30).width(70).height(20)
        }
        
        windLablel.configureFrame { maker in
            maker.top(to: self.headingWindlabel.nui_bottom, inset: 5).left(inset: 30).width(150).height(20)
        }
        
        headingHumidityLabel.configureFrame { maker in
            maker.top(to: self.windLablel.nui_bottom, inset: 60).left(inset: 30).width(100).height(20)
        }
        
        humidityLabel.configureFrame { maker in
            maker.top(to: self.headingHumidityLabel.nui_bottom, inset: 5).left(inset: 30).width(150).height(20)
        }
        
        headingPressureLabel.configureFrame { maker in
            maker.top(to: self.infoWeatherView.nui_bottom, inset: 100)
                .left(to: self.headingWindlabel.nui_right, inset: 130)
                .width(100)
                .height(20)
        }
        pressureLabel.configureFrame { maker in
            maker.top(to: self.headingPressureLabel.nui_bottom, inset: 5)
                .left(to: self.headingWindlabel.nui_right, inset: 130)
                .width(150)
                .height(20)
        }
        headingChanceOfRainLabel.configureFrame { maker in
            maker.top(to: self.pressureLabel.nui_bottom, inset: 60)
                .left(to: self.headingWindlabel.nui_right, inset: 130)
                .width(180)
                .height(20)
        }
        
        chanceOfRainLabel.configureFrame { maker in
            maker.top(to: self.headingChanceOfRainLabel.nui_bottom, inset: 5)
                .left(to: self.headingWindlabel.nui_right, inset: 130)
                .width(170)
                .height(20)
        }
        
    }
}
