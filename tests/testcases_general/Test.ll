; ModuleID = 'test.cminus'
source_filename = "test.cminus"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = dso_local global [10 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort(float* noundef %0, i32 noundef %1, float noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %17, %3
  %12 = load i32, i32* %7, align 4
  %13 = sitofp i32 %12 to float
  %14 = load float, float* %6, align 4
  %15 = fsub float %14, 1.000000e+00
  %16 = fcmp olt float %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load float*, float** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = fptosi float %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load float*, float** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float %28, float* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float*, float** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float %34, float* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11, !llvm.loop !6

41:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @sort(float* noundef getelementptr inbounds ([10 x float], [10 x float]* @x, i64 0, i64 0), i32 noundef 0, float noundef 1.000000e+01)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
