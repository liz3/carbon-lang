package Liz3 api;


fn Main() -> i32 {
  var in_file: i32 = Open("/Users/liz3/Desktop/new_vid.mov");
  var out_file: i32 = Open("/Users/liz3/Desktop/new_vid_twp.mov");
  var con: i8 = 1;
  var total_writes: i32 = 0;
  var list_var: [u8; 20] = (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
  while(con == 1) {
    var rr: i32 = Read(in_file, list_var);
    total_writes = total_writes + rr;
    if(rr == 0) {
      break;
    }
    Write(out_file, list_var, rr);
  }
  Close(in_file);
  Close(out_file);
  Print("Total bytes written: {0}", total_writes);
  return 0;
}
