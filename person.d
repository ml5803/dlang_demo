import std.stdio;

class Person{
    public string name;
    private int age;
    private bool isHappy;
    private float height;
    private string[] pets;

    this(string name, bool isHappy, int age, float height, string[] pets){
        this.name = name;
        this.isHappy = isHappy;
        this.height = height;
        this.age = age;
        this.pets = pets;
    }

    public const void saySecret(){
        writeln("Psst, I have a secret.");
    }

    public const void talk(){
        writeln("Hello World, I'm " ~ this.name ~ "."); // string concatenation
        if (this.isHappy) {
            writeln("I am happy.");
        }
        writeln("I am ", this.age, " years old and ", this.height, " feet tall.");
        writeln("Pets:", this.pets);
    }
}

class Student : Person{
    private double secret;
    this(string name, bool isHappy, int age, float height, string[] pets, double secret){
        super(name,isHappy,age,height,pets);
        this.secret = secret;
    }

    override public const void saySecret(){
        writeln("Yo yo, my secret password is ", this.secret, ".");
    }
}

void main() {
    string[] pets = ["dog","cat","elephant"];

    Person adam = new Person("adam", true, 10 , 6.42, pets);
    adam.talk();
    adam.saySecret();

    writeln();

    Student bob = new Student("bob", false, 20, 6.01, ["kangaroo","donkey","penguin"],9132);
    bob.talk();
    bob.saySecret();
}