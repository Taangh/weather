//
//  Constants.swift
//  WeatherApp
//
//  Created by Damian on 17.09.2017.
//  Copyright © 2017 Damian. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "34c0bf7111e0ccdde5866b8ec6fcc2b3"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATTITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"
