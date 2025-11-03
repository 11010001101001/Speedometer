//
//  Item.swift
//  HUD
//
//  Created by Ярослав Куприянов on 23.10.2025.
//

import Foundation
import SwiftData

@Model
final class Settings {
    var maxSpeed: Double
    var speedExceededSound: Sound
    var isSpeedAnimationEnabled: Bool
    var isWeatherShown: Bool
    var fuelEconomyMinSpeed: Double
    var fuelEconomyMaxSpeed: Double
    var coffeeBreakDelay: Double
    var mode: Mode

    init(
        maxSpeed: Double,
        speedExceededSound: Sound,
        isSpeedAnimationEnabled: Bool,
        isWeatherShown: Bool,
        fuelEconomyMinSpeed: Double,
        fuelEconomyMaxSpeed: Double,
        coffeeBreakDelay: Double,
        mode: Mode
    ) {
        self.maxSpeed = maxSpeed
        self.speedExceededSound = speedExceededSound
        self.isSpeedAnimationEnabled = isSpeedAnimationEnabled
        self.isWeatherShown = isWeatherShown
        self.fuelEconomyMinSpeed = fuelEconomyMinSpeed
        self.fuelEconomyMaxSpeed = fuelEconomyMaxSpeed
        self.coffeeBreakDelay = coffeeBreakDelay
        self.mode = mode
    }
}
