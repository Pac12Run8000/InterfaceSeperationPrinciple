//
//  ContentView.swift
//  InterfaceSeperationPrinciple
//
//  Created by Michelle Grover on 2/16/23.
//

import SwiftUI

protocol CarMakeModelPriceGenerator {
    func calculatePrice(make: String, model: String) -> Double
}

protocol CarPriceGenerator {
    func calculatePrice(make: String, model: String, year: Int, condition: String) -> Double
}

class CarPriceCalculator: CarMakeModelPriceGenerator, CarPriceGenerator {
    func calculatePrice(make: String, model: String) -> Double {
        // Calculate basic price based on make and model
        return 10000.0
    }
    
    func calculatePrice(make: String, model: String, year: Int, condition: String) -> Double {
        // Calculate full price based on make, model, year, and condition
        return 20000.0
    }
}

struct CarPriceView: View {
    let carMake: String
    let carModel: String
    let carYear: Int?
    let carCondition: String?
    
    var body: some View {
        VStack {
            Text("Car Price: \(calculatePrice())")
        }
    }
    
    private func calculatePrice() -> Double {
        if let year = carYear, let condition = carCondition {
            // Use the CarPriceGenerator interface for full price calculation
            let fullPriceGenerator: CarPriceGenerator = CarPriceCalculator()
            return fullPriceGenerator.calculatePrice(make: carMake, model: carModel, year: year, condition: condition)
        } else {
            // Use the CarMakeModelPriceGenerator interface for basic price calculation
            let basicPriceGenerator: CarMakeModelPriceGenerator = CarPriceCalculator()
            return basicPriceGenerator.calculatePrice(make: carMake, model: carModel)
        }
    }
}


struct CarPriceView_Previews: PreviewProvider {
    static var previews: some View {
        CarPriceView(carMake: "", carModel: "", carYear: nil, carCondition: nil)
    }
}
