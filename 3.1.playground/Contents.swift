/*
 Codility 3.1 : PermMissingElem
 Find the missing element in a given permutation.
 
 A zero-indexed array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
 
 Your goal is to find that missing element.
 
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int
 that, given a zero-indexed array A, returns the value of the missing element.
 
 For example, given array A such that:
 
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 the function should return 4, as it is the missing element.
 
 Assume that:
 
 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
 Elements of input arrays can be modified.
 */


/* 100/100 solution */

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    let incrementSum = A.count * (A.count + 1) / 2
    
    var sum = 0
    var highest = 0
    
    for n in A {
        sum += n
        if n > highest {
            highest = n
        }
    }
    
    let res = highest - (sum - incrementSum)
    
    return res == highest ? res + 1 : res
}

var a: [Int] = [1,2,3]
var b: [Int] = [7, 4, 1, 9, 3, 2, 10, 6, 8, 12, 11]

solution(&a)
solution(&b)




