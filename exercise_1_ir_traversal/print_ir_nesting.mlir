module {
  %results:4 = "dialect.op1"() : () -> (i1, i16, i32, i64)
  "dialect.op2"() ({
    "dialect.innerop1"(%results#0, %results#1) : (i1, i16) -> ()
  },{
    "dialect.innerop2"() : () -> ()
    "dialect.innerop3"(%results#0, %results#2, %results#3)[^bb1, ^bb2] : (i1, i32, i64) -> ()
  ^bb1(%arg1 : i32):
    "dialect.innerop4"() : () -> ()
    "dialect.innerop5"() : () -> ()
  ^bb2(%arg2 : i64):
    "dialect.innerop6"() : () -> ()
    "dialect.innerop7"() : () -> ()
  }) : () -> ()
}