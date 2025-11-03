//
//  TemperatureView.swift
//  HUD
//
//  Created by Ярослав Куприянов on 26.10.2025.
//

import SwiftUI

struct TemperatureView: View {
    @ObservedObject var weatherManager: WeatherManager

    @Bindable var savedSettings: Settings

    var body: some View {
        content
    }
}

// MARK: - Content
private extension TemperatureView {
    var content: some View {
        HStack(spacing: 8) {
            locationIcon

            if savedSettings.isWeatherShown ?? false {
                locationName
                temperature
            }
        }
        .opacity(0.5)
    }

    var temperature: some View {
        buildText(weatherManager.temperature)
    }

    @ViewBuilder
    var locationIcon: some View {
        let name = weatherManager.locationName
        let systemName = name.isEmpty ? "antenna.radiowaves.left.and.right.slash" : "antenna.radiowaves.left.and.right"

        Image(systemName: systemName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .foregroundStyle(.white)
            .frame(width: 20, height: 20)
    }

    var locationName: some View {
        buildText(weatherManager.locationName)
    }

    func buildText(_ text: String) -> some View {
        Text(text)
            .font(.system(size: 20))
            .fontDesign(.rounded)
            .foregroundStyle(.white)
    }
}
