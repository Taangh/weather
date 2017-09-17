//
//  ViewController.swift
//  WeatherApp
//
//  Created by Damian on 17.09.2017.
//  Copyright © 2017 Damian. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var currentWeatherTypeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

