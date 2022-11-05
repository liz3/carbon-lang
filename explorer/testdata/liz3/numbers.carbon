
  package Liz3 api;

fn Test(test: i8) {

    Print("{0}", test);
}
  fn Main() -> i32 {
    var bigbig: u64 = 9223372036854775808;
    var big2: u32 = bigbig;
    var big3: i32 = big2 +1;
    Print("{0}", big3);
    return 0;
  }
