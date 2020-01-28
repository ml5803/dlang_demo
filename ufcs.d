import std.stdio;

int multiply(int x,int y){
    return x*y;
}

int add(int x, int y){
    return x+y;
}

void cook(string food,int amount){
    writeln("Cooking ", food, " for ", amount, " people.");
}

void main(){
    string food = "French fries";
    int amount = 3;

    cook(food,amount);
    food.cook(amount);

    //why useful? Chaining
    int value = 5;
    writeln(add(5,multiply(value,10)));
    value.multiply(10).add(5).writeln;
}