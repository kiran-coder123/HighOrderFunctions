//
//  ViewController.swift
//  HighOrderFunctions
//
//  Created by Prashant G on 1/15/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myDevices = [Device]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myiMacPro       = Device(type: "iMac Pro", price: 4999.00, color: "Space Grey")
        let myiPhone6Plus   = Device(type: "iPhone", price: 799.00, color: "White")
        let myiPhone7       = Device(type: "iPhone", price: 699.00, color: "Black")
        let myiPad          = Device(type: "iPad", price: 599.00, color: "Space Grey")
        let myAppleWatch    = Device(type: "Apple Watch", price: 349.00, color: "Space Grey")
        let myAppleTV       = Device(type: "Apple TV", price: 199.00, color: "Black")
        
        myDevices = [myiMacPro, myiPhone6Plus, myiPhone7, myiPad, myAppleWatch, myAppleTV]
        
        
        
        // FILTER
        let iPhones = myDevices.filter({ $0.type == "iPhone"})
        print(iPhones)
        //var myPhones: [Device] = []
        //
        //for device in myDevices {
        //    if device.type == "iPhone" {
        //        myPhones.append(device)
        //    }
        //}
        
        
        // MAP
        let canadianPrices: [Float] = myDevices.map({ $0.price * 1.2})
        print(canadianPrices)
        
        
        // REDUCE
        let totalCanadianPrice: Float = canadianPrices.reduce(0.0, +)
        print(totalCanadianPrice)
        //var totalPrice: Float = 0.0
        //
        //for price in canadianPrices {
        //    totalPrice += price
        //}
        //
        //print(totalPrice)
        
        
        // High order functions

        let numbers = [3,4,1,7,5,2,9,8,10]
        let numbersWithNil = [3,4,nil,1,7,5,nil,2,9,8,10,nil]
        let marks = [[3, 4, 5], [2, 5, 3], [1, 2, 2], [5, 5, 4], [3, 5, 3]]

        //Sorted
        print(numbers.sorted())
        print(numbers.sorted(by: { (a, b) -> Bool in
            a > b
        }))
        print(numbers.sorted(by: >))
        print(numbers.sorted(by: { (a, b) -> Bool in
            a % 2 == 0
        }))

        //Map
        print(numbers.map({ (a) -> String in
            String(a)
        }))
        print(numbers.map{ String($0) })
        //Compact Map
        print(numbersWithNil.compactMap({ (a) -> String? in
            String(a ?? 0)
        }))
        print(numbersWithNil.compactMap({ String($0 ?? 0) }))
        //Flat Map
        print(marks.flatMap({ (array) -> [Int] in
            return array
        }))

        //Filter
        print(numbers.filter({ (a) -> Bool in
            a < 5
        }))
        print(numbers.filter({ $0 < 5 }))

        //Reduce
        print(numbers.reduce("", { (result, a) -> String in
            result + String(a)
        }))
        print(numbers.reduce("", { $0 + String($1) }))

    }


}

