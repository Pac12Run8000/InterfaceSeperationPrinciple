//
//  Employee.swift
//  InterfaceSeperationPrinciple
//
//  Created by Michelle Grover on 2/16/23.
//

import Foundation

// Define the smaller interfaces
protocol PayrollProcessable {
    func processPayroll()
}

protocol TimeOffRequestable {
    func submitTimeOffRequest()
}

protocol BenefitsEnrollable {
    func enrollInBenefits()
}

// Employee class that implements the smaller interfaces
class Employee: PayrollProcessable, TimeOffRequestable, BenefitsEnrollable {
    
    func processPayroll() {
        // implementation for processing payroll
    }
    
    func submitTimeOffRequest() {
        // implementation for submitting time-off requests
    }
    
    func enrollInBenefits() {
        // implementation for enrolling in benefits
    }
}

/**
 In this example, the Employee class implements the three smaller interfaces: PayrollProcessable, TimeOffRequestable, and BenefitsEnrollable.

 Each of the interfaces contains only the methods that are relevant to its responsibility. By breaking down the large Employee interface into smaller, more focused interfaces, the code is more modular and easier to maintain. Clients that use the Employee class can choose to implement only the smaller interfaces that are relevant to their use case, rather than being forced to implement a large interface that contains methods that are not relevant to their use case.
 */
