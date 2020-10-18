//
//  main.swift
//  TechmasterBaiTapBuoi1
//
//  Created by Nguyen Trung on 10/17/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import Foundation

//MARK: - Bai1

func convertCelciusToFanherit(a: Float) -> Float {
    let b = (a - 32)/1.8
    print("\(a) độ C = \(b) độ F")
    return b
}
convertCelciusToFanherit(a:10)

func convertFanheritToCelcius(a: Float) -> Float {
    let b = 1.8*a + 32
    print("\(a) độ F = \(b) độ C")
    return b
}
convertFanheritToCelcius(a:30)

func convertTemperature(a: Float, b: Bool) -> Float {
    if b == true {
        let c = (a - 32)/1.8
        print("\(a) độ C = \(c) độ F")
        return c
    } else {
        let c = 1.8*a + 32
        print("\(a) độ F = \(c) độ C")
        return c
    }
}
convertTemperature(a: 10, b: true)
convertTemperature(a: 30, b: false)

//MARK: -Bai2
var a: Float = 3
var b: Float = 4
var c: Float = 5
if (a*a<=b*b+c*c) && (b*b<=a*a+c*c) && (c*c<=b*b+a*a) {
    print("Đây là 3 cạnh của 1 tam giác")
    let p = (a+b+c)/2
    let s = sqrtf(p*(p-a)*(p-b)*(p-c))
    print("Diện tích tam giác là:\(s)")
}else{
    print("Đây không phải là 3 cạnh của tam giác")
}

func areaOfTriangle (x: Float, y: Float, z: Float) -> Float? {
    if (x*x<=y*y+z*z) && (y*y<=x*x+z*z) && (z*z<=y*y+x*x) {
        print("Đây là 3 cạnh của 1 tam giác")
        let p = (x+y+z)/2
        let s = sqrtf(p*(p-x)*(p-y)*(p-z))
        print("Diện tích tam giác là:\(s)")
        return s
    }else{
        print("Đây không phải là 3 cạnh của tam giác")
        return nil
    }
}
areaOfTriangle(x: 3, y: 4, z: 5)
areaOfTriangle(x: 3, y: 4, z: 2)
