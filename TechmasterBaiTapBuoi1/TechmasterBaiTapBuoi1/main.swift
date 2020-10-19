//
//  main.swift
//  TechmasterBaiTapBuoi1
//
//  Created by Nguyen Trung on 10/17/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import Foundation

//MARK: - Bai1
/*
 Viết hàm chuyển đổi nhiệt độ từ độ C sang độ F và ngược lại

 Hướng dẫn:

 °F  =  ( °C × 1.8 ) +  32

 */

func convertCelciusToFanherit(a: Float) -> Float {
    let b = (a - 32)/1.8
    print("\(a) độ C = \(b) độ F")
    return b
}
let faherit = convertCelciusToFanherit(a:10)

func convertFanheritToCelcius(a: Float) -> Float {
    let b = 1.8*a + 32
    print("\(a) độ F = \(b) độ C")
    return b
}
let celcius = convertFanheritToCelcius(a:30)

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
/*
 Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?

     - Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.

     - Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”
 */
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

//MARK: - Bai3
/*
 Cho một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không?

 Hướng dẫn:

 Năm nhuận là năm chia hết cho 400

 Năm nhuận là năm chia hết cho 4 nhưng không chia hết cho 100
 */

var year: Int = 2000
if year%400 == 0 {
    print("\(year) là năm nhuận")
}else if year%4 == 0 && year%100 != 0{
    print("\(year) là năm nhuận")
}else{
    print("\(year) không là năm nhuận")
}

var namNhuan = "năm Nhuận"
var namKhongNhuan = " năm không nhuận"
func checkYear (year: Int) -> String {
    if year%400 == 0 {
        print("\(year) là năm nhuận")
        return namNhuan
    }else if year%4 == 0 && year%100 != 0{
        print("\(year) là năm nhuận")
        return namNhuan
    }else{
        print("\(year) không là năm nhuận")
        return namKhongNhuan
    }
}
checkYear(year: 2000)

//MARK: - Bai4
/*
 Cho một mảng số nguyên. Viết hàm kiểm tra nếu trong mảng có phần tử âm thì thay thế nó bằng 0.
 */

var arrayInt: [Int] = [3, 10, -58, 20, 158, -6]
var mangRong = [Int]()
var mangSoChan = [-28, 20, 14, 118, -66, 88]
var mangSoLe = [-9, 13, 3337, 59, 97, 1]

if arrayInt.count == 0 {
    print("Mảng là rỗng")
}else{
    for i in 0..<arrayInt.count {
        if arrayInt[i] < 0 {
            arrayInt[i] = 0
        }
    }
    print(arrayInt)
}

func checkArray (arrs: [Int]) -> [Int] {
    var result = arrs
    if result.count == 0 {
        print("Mảng là rỗng")
    }else{
        for i in 0..<result.count {
            if result[i] < 0 {
                result[i] = 0
            }
        }
    }
    print(result)
    return result
}
checkArray(arrs: arrayInt)
checkArray(arrs: mangRong)
//MARK: - Bai5
/*
 Viết hàm tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.
 */

arrayInt += [-20, 35, -235]
var min: Int = 0
func minArrayInt (arrs: [Int]) -> Int {
    if arrs.count == 0 {
        print("Mảng là rỗng")
        return (0)
    }
    for i in arrs {
        if i < min {
            min = i
        }
    }
    print("Giá trị nhỏ nhất của mảng là:", min)
    return min
}
minArrayInt(arrs: arrayInt)

var max: Int = 0
func maxArrayInt (arrs: [Int]) -> Int {
    if arrs.count == 0 {
        print("Mảng là rỗng")
        return (0)
    }
    for i in arrs {
        if i > max {
            max = i
        }
    }
    print("Giá trị lớn nhất của mảng là:", max)
    return max
}
maxArrayInt(arrs: arrayInt)

func minMaxArray(arrs: [Int]) -> (min: Int, max: Int) {
    if arrs.count == 0 {
        print("Mảng là rỗng")
        return (0, 0)
    }
    var min = arrs[0]
    var max = arrs[0]
    for i in arrs {
        if i < min {
            min = i
        }
        if i > max {
            max = i
        }
    }
    print("Giá trị lớn nhất của mảng là: \(max) \nGiá trị nhỏ nhất của mảng là: \(min)")
    return(min, max)
}
minMaxArray(arrs: arrayInt)

//MARK: - Bai 6
/*
 Trả về vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
 */

func vtSoLeDauTien(arrs: [Int]) {
    if arrs.count == 0 {
        print("Mảng là rỗng")
    }
    var tonTaiSoLe: Bool = false
    for (i, item) in arrs.enumerated() {
        if item%2 != 0{
            print("Số \(item) là số lẻ đầu tiên của mảng có vị trí \(i)")
            tonTaiSoLe = true
            break
        }
    }
    if tonTaiSoLe == false  {
        print("Mảng toàn số chẵn")
    }
}
vtSoLeDauTien(arrs: arrayInt)
vtSoLeDauTien(arrs: mangSoChan)

func vtSoChanCuoiCung(arrs: [Int]) {
    if arrs.count == 0 {
        print("Mảng là rỗng")
    }
    var tonTaiSoChan: Bool = false
    for (i, item) in arrs.enumerated().reversed() {
        if item%2 == 0{
            print("Số \(item) là số chẵn cuối cùng của mảng có vị trí \(i)")
            tonTaiSoChan = true
            break
        }
    }
    if tonTaiSoChan == false  {
        print("Mảng toàn số lẻ")
    }
}
vtSoChanCuoiCung(arrs: arrayInt)
vtSoChanCuoiCung(arrs: mangSoLe)

//func locationOfNumber(arrs: [Int]) -> (vtsl: Int, vtsc: Int) {
//    if arrs.count == 0 {
//        print("Mảng là rỗng")
//        return (0, 0)
//    }
//    var vtsLe: Int = 0
//    var vtsChan: Int = 0
//    var ttgt: Bool = true
//    for (i, item) in arrs.enumerated() {
//        if item%2 != 0{
//            print("Số \(item) là số lẻ đầu tiên của mảng có vị trí \(i)")
//            ttgt = true
//            vtsLe = i
//            break
//        }
//    }
//
//    for (i, item) in arrs.enumerated().reversed() {
//        if item%2 == 0{
//            print("Số \(item) là số chẵn cuối cùng của mảng có vị trí \(i)")
//            ttgt = false
//            vtsChan = i
//            break
//        }
//    }
//    return (vtsLe, vtsChan)
//}
//locationOfNumber(arrs: arrayInt)
//locationOfNumber(arrs: mangSoChan)
//locationOfNumber(arrs: mangSoLe)
