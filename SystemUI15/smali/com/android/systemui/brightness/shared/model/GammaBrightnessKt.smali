.class public abstract Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final logDiffForTable-GAU2kQA(Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;Lcom/android/systemui/log/table/TableLogBuffer;)Lkotlinx/coroutines/flow/Flow;
    .locals 5

    new-instance v0, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt$logDiffForTable$initialValueFun$1;

    const-string v1, "gamma"

    const-string v2, "brightness"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt$logDiffForTable$initialValueFun$1;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/brightness/shared/model/GammaBrightness;)V

    new-instance v4, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt$logDiffForTable$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt$logDiffForTable$1;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt$logDiffForTable$2;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/brightness/shared/model/GammaBrightnessKt$logDiffForTable$2;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v4, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
