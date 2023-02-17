//
//  Dog.swift
//  InterfaceSeperationPrinciple
//
//  Created by Michelle Grover on 2/16/23.
//

import Foundation

protocol Runnable {
    func walk()
    func run()
}

protocol Swimmable {
    func swim()
}

protocol Flyable {
    func fly()
}

// Dog implements only Runnable and Swimmable protocols
class Dog: Runnable, Swimmable {
    func walk() {
        // Implementation
    }
    
    func run() {
        // Implementation
    }
    
    func swim() {
        // Implementation
    }
}

