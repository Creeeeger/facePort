.class public abstract Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final formatBrightness(F)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.3f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final logDiffForTable-CVGC-8U(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    new-instance v0, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt$logDiffForTable$initialValueFun$1;

    const-string v1, "linear"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt$logDiffForTable$initialValueFun$1;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/brightness/shared/model/LinearBrightness;)V

    new-instance v3, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt$logDiffForTable$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt$logDiffForTable$1;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt$logDiffForTable$2;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt$logDiffForTable$2;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v3, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
