//
//  WeatherData.swift
//  Your Weather
//
//  Created by Kuba  on 16/04/2020.
//  Copyright © 2020 Kuba . All rights reserved.
//

import Foundation
struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}
struct Main: Decodable {
    let temp: Double
    let pressure: Int
    let humidity: Int
}
struct Weather: Decodable {
    let description: String
    let id: Int
}
