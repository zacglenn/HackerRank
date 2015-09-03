using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        String tStr = Console.ReadLine();
        String[] alphabet = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
        var b = true;
        foreach(var letter in alphabet){
            if(!tStr.ToLower().Contains(letter)){
                b = false;
            }
        }
        if(b){
            Console.WriteLine("pangram");
        }
        else{
            Console.WriteLine("not pangram");
        }
    }
}
