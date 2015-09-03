using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        var t = Convert.ToInt32(Console.ReadLine());
        for(int i=0;i<t;i++){
            String str = Console.ReadLine();
            char prevLetter = str[0];
            var delCnt = -1;
            foreach(var letter in str){
                if(letter == prevLetter){
                    delCnt++;
                }
                else{
                    prevLetter = letter;
                }
            }
            Console.WriteLine(delCnt);
        }
    }
}
