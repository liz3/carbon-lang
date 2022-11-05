package Liz3 api;

class Human {

  destructor[me: Self]{
    Print("Destructing human: {0}", me.age);
  }
  fn Create(name:String, age:i32) -> Self {
    return { .name = name, .gender = 0, .age = age, .is_adult = true };
  }
  fn GetName[me: Self]() -> String {
    return me.name;
  }
  var name:String;
  var gender:i32;
  var age:i32;
  var is_adult: bool;

}
fn Main() -> i32 {
    var h:auto = Human.Create("Liz3", 22);
    var hPtr: Human* = &h;
    Print((*hPtr).GetName());
    return 0;
}
