//
//  ViewController.swift
//  WeatherApp
//
//  Created by Damian on 17.09.2017.
//  Copyright © 2017 Damian. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var currentWeatherTypeLbl: UILabel!
    
    var currentWeather = CurrentWeather()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails{
            self.updateMainUI()

        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell
    }
    
    func updateMainUI() {
        dateLbl.text = currentWeather.date
        currentTempLbl.text = "\(currentWeather.currentType)"
        currentWeatherTypeLbl.text = currentWeather.weatherType
        locationLbl.text = currentWeather.cityName
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }

}

