/*
Problem Statement

An array is a series of elements of the same type placed in contiguous memory locations that can be individually referenced by adding an index to a unique identifier.

You'll be given an array of N integers, and you have to print the integers in reverse order.

Note: If you have already solved the problem "Arrays Introduction" in the Introduction chapter of the C++ domain, you may skip this challenge.

Input Format

The first line of input contains N, the number of integers. The next line contains N integers separated by a space.

Constraints

1<=N<=1000

1<=Ai<=10000, where Ai is the ith integer in the array.

Output Format

Print the N integers of the array in the reverse order on a single line separated by single spaces.

Sample Input

4
1 4 3 2

Sample Output

2 3 4 1

*/

using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        char[] charSeparators = new char[] {' '};
        var numberOfArrayValues = Convert.ToInt32(Console.ReadLine());
        String arrayValues = Console.ReadLine();
        String[] split_Values = arrayValues.Split(charSeparators, StringSplitOptions.RemoveEmptyEntries);
        Array.Reverse(split_Values);
        for(int i=0; i<numberOfArrayValues; i++){
            Console.Write(split_Values[i]);
            if(i<numberOfArrayValues-1){
                Console.Write(' ');
            }
        }
    }
}
