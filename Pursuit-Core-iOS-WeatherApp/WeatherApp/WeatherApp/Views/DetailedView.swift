//
//  DetailedView.swift
//  WeatherApp
//
//  Created by Melinda Diaz on 2/5/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class DetailedView: UIView {
    
    //TODO: how to get the detailed info in the labels
    
    public lazy var currentWeatherLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemTeal
        label.text = "weather for city"
        return label
    }()
    
    public lazy var cityImageView: UIImageView = {
        let cityImage = UIImageView()
        cityImage.backgroundColor = .systemPink
        return cityImage
    }()
    
    public lazy var summaryDetailLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemTeal
        // label.text =
        return label
    }()
    
    public lazy var highTempLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        //label.text
        return label
    }()
    
    public lazy var lowTempLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemTeal
        //label.text
        return label
    }()
    
    public lazy var sunriseLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        //label.text
        return label
    }()
    
    public lazy var sunsetLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemTeal
        //label.text
        return label
    }()
    
    public lazy var windSpeedLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemPink
        //label.text
        return label
    }()
    
    public lazy var precipitationLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemTeal
        //label.text
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setUpCurrentWeatherLabel()
        setUpCityImageView()
        setUpSummaryDetail()
        setUpHighTempLabel()
        setUpLowTempLabel()
        setUpSunriseLabel()
        setUpSunsetLabel()
        setUpWindSpeedLabel()
        setUpPrecipitationLabel()
        
        
    }
    
    private func setUpCurrentWeatherLabel() {
        addSubview(currentWeatherLabel)
        currentWeatherLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            currentWeatherLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            currentWeatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            currentWeatherLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
    }
    
    private func setUpCityImageView() {
        addSubview(cityImageView)
        cityImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cityImageView.topAnchor.constraint(equalTo: currentWeatherLabel.bottomAnchor, constant: 20),
            cityImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cityImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            cityImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
        ])
    }
    
    private func setUpSummaryDetail() {
        addSubview(summaryDetailLabel)
        summaryDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            summaryDetailLabel.topAnchor.constraint(equalTo: cityImageView.bottomAnchor, constant: 40),
            summaryDetailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            summaryDetailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            //this makes the height equal to the currentWeather Label
            summaryDetailLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
    
    private func setUpHighTempLabel() {
        addSubview(highTempLabel)
        highTempLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            highTempLabel.topAnchor.constraint(equalTo: summaryDetailLabel.bottomAnchor, constant: 20),
            highTempLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            highTempLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            //this makes the height equal to the currentWeather Label
            highTempLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
    
    private func setUpLowTempLabel() {
        addSubview(lowTempLabel)
        lowTempLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lowTempLabel.topAnchor.constraint(equalTo: highTempLabel.bottomAnchor, constant: 20),
            lowTempLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lowTempLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            lowTempLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
    
    private func setUpSunriseLabel() {
        addSubview(sunriseLabel)
        sunriseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sunriseLabel.topAnchor.constraint(equalTo: lowTempLabel.bottomAnchor, constant: 20),
            sunriseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            sunriseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            sunriseLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
    
    private func setUpSunsetLabel() {
        addSubview(sunsetLabel)
        sunsetLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sunsetLabel.topAnchor.constraint(equalTo: sunriseLabel.bottomAnchor, constant: 20),
            sunsetLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            sunsetLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            sunsetLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
    
    private func setUpWindSpeedLabel() {
        addSubview(windSpeedLabel)
        windSpeedLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            windSpeedLabel.topAnchor.constraint(equalTo: sunsetLabel.bottomAnchor, constant: 20),
            windSpeedLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            windSpeedLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            windSpeedLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
    
    private func setUpPrecipitationLabel() {
        addSubview(precipitationLabel)
        precipitationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            precipitationLabel.topAnchor.constraint(equalTo: windSpeedLabel.bottomAnchor, constant: 20),
            precipitationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            precipitationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            precipitationLabel.heightAnchor.constraint(equalTo: currentWeatherLabel.heightAnchor)
        ])
    }
}
