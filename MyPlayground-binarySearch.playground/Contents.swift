//: Playground - noun: a place where people can play

import UIKit

var array = [1,4,3,7,8,6,7,8,9,0]
let srh = 4
array = array.sorted()

func binarySearch (array: [Int], value: Int) -> Int?{
    
    if !array.isEmpty{
        var indexMin = array.startIndex
        var indexMax = array.endIndex-1
        
        while indexMin <= indexMax{
            
            let indexMid = (indexMin + indexMax)/2
            
            if array[indexMid] == value{
                return indexMid
            }
            
            if value < array[indexMid]{
                indexMax = indexMid-1
            }else{
                indexMin = indexMid+1
            }
        }
    }
    return nil
}

binarySearch(array: array, value: srh)









