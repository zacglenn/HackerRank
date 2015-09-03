using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static string ReverseString(String s){
        char[] arr = s.ToCharArray();
        Array.Reverse(arr);
        return new string(arr);
    }
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        var t = Convert.ToInt32(Console.ReadLine());
        for(int i=0; i<t; i++){
            String s = Console.ReadLine();
            String r = ReverseString(s);
            for(int j=s.Length-1; j>0; j--){
                if(Math.Abs((int)s[j]-(int)s[j-1]).Equals(Math.Abs((int)r[j]-(int)r[j-1]))){
                    ;
                }
                else{
                    Console.WriteLine("Not Funny");
                    break;
                }
                if(j == 1){
                    Console.WriteLine("Funny");
                }
            }
        }
    }
}
