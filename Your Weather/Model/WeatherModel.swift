//
//  WeatherModel.swift
//  Your Weather
//
//  Created by Kuba  on 16/04/2020.
//  Copyright © 2020 Kuba . All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditonId: Int
    let cityName: String
    let temperature: Double
    let forecast: String
    let press: Int
    let hum: Int
    
    
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    var pressString: String {
        return String ("\(press) hPa")
    }
    var humidityString: String {
        return String("\(hum) %")
    }
    var conditionName: String {
        switch conditonId {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
        }
    }
}
