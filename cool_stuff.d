import std.stdio;
import std.range;
import std.algorithm;

void higherOrder() @trusted{ 
    //Higher Order 
    int[] demo = [1,2,3,4,5,6,7,8,9];
    auto mapped = map!(x => x * 2)(demo); //map
    auto chained = chain(demo,mapped); //chain
    auto filtered = demo.filter!(x => (x % 2) == 0); //filter
    auto foldl = reduce!((x,y) => x + y) (0, demo);
    writeln("----------------------------------------------");
    writeln("demo: ", demo);
    writeln("demo * 2: ",mapped);
    writeln("chained(demo ~ demo * 2): ", chained);
    writeln("filtered only evens: ",filtered);
    writeln("foldl - sum: ", foldl);
}

void main() @safe{ 
    higherOrder();
    int* ptr = new int(7);
    ptr = cast(double*) ptr;
}


