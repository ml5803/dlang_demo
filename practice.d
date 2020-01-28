import std.stdio;
import std.range;
import std.algorithm;

void main(){
    //Given an array of strings, filter it so that only strings less than 4 characters remain
    //Hint: you can do str.length to get length of str
    string[] words = ["hi","greetings","bye","farewell","d", "dlang"];
    auto result = words.filter!(x => x.length < 4);//Your code here -> Use a higher order function! 
    writeln(result);
}

void answer(){
    string[] words = ["hi","greetings","bye","farewell","d", "dlang"];
    auto result = words.filter!(x => x.length < 4);
    writeln(result);
}