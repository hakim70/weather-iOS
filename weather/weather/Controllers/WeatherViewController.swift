//
//  ViewController.swift
//  weather
//
//  Created by Tekup-mac-1 on 10/5/2024.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let primaryView = CurrentWeatherView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        getLocation()
    }
    
    private func getLocation() {
        LocationManager.shared.getCurrentLocation { location in
            print(String(describing: location))
            
            WeatherManager.shared.getWeather(for: location){
                [weak self] in
                DispatchQueue.main.async{
                    self?.primaryView.reload()
                }
            }
        }
    }
    
    private func setUpView() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(primaryView)
            //        primaryView.translatesAutoresizingMaskIntoConstraints = false // Need to set this to false for manual constraints
            
            NSLayoutConstraint.activate([
                primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
                primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
        }
}
