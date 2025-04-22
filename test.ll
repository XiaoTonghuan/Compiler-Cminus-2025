; ModuleID = 'cminus'
source_filename = "/home/xctshr/proj/2025ustc-compiler/tests/testcases_general/test.cminus"

declare i32 @input()

declare void @output(i32)

declare void @outputFloat(float)

declare void @neg_idx_except()

define void @main() {
label_entry:
  %op0 = alloca [10 x i32]
  %op1 = sub i32 2, 3
  %op2 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 %op1
  %op3 = load i32, i32* %op2
  ret void
}
