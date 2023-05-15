//
//  ChangeCityViewController.swift
//  OpenWeatherApp
//
//  Created by jazeps.ivulis on 14/05/2023.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnterCityName(city: String)
}

class ChangeCityViewController: UIViewController {

    var delegate: ChangeCityDelegate?
    @IBOutlet weak var cityTextField: DesignableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getWeatherTapped(_ sender: Any) {
        
        guard let cityName = cityTextField.text else { return }
        
        if !cityName.isEmpty {
            delegate?.userEnterCityName(city: cityName)
            self.dismiss(animated: true)
        }
    }
}
