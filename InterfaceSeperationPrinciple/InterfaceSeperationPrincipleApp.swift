//
//  InterfaceSeperationPrincipleApp.swift
//  InterfaceSeperationPrinciple
//
//  Created by Michelle Grover on 2/16/23.
//

import SwiftUI

@main
struct InterfaceSeperationPrincipleApp: App {
    var body: some Scene {
        WindowGroup {
            CarPriceView(carMake: "", carModel: "", carYear: nil, carCondition: nil)
        }
    }
}
