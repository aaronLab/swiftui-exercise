//
//  CounterViewModel.swift
//  MVVMExample
//
//  Created by Aaron Lee on 2020-11-29.
//

import Foundation

final class CounterViewModel: ObservableObject {
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    var premium: Bool {
        counter.isPremium
    }
    
    func increment() {
        counter.increment()
    }
    
}
